defmodule PolarExpress.Generator.OpenAPI do
  @moduledoc false

  @doc """
  Parse the Polar OpenAPI spec into a normalized structure.

  Returns:
    %{
      api_version: String.t(),
      resources: [resource()],
      path_specs: %{String.t() => path_spec()},
      event_types: %{String.t() => event_type_schema()}
    }
  """
  def parse(spec_path \\ "priv/openapi/openapi.json") do
    raw = File.read!(spec_path) |> RustyJson.decode!()

    schemas = raw["components"]["schemas"] || %{}
    paths = raw["paths"] || %{}

    schema_index = build_schema_index(schemas)

    resources =
      paths
      |> extract_polar_resources(schema_index)
      |> Enum.sort_by(& &1.schema_id)

    path_specs = parse_paths(paths)
    webhook_data_schemas = parse_webhook_data_schemas(raw)
    event_types = parse_event_types(raw, webhook_data_schemas)

    resource_docs =
      resources
      |> Enum.filter(& &1.is_primary)
      |> Map.new(fn r ->
        {{r.package, r.class_name}, %{title: r.title, description: r.description}}
      end)

    %{
      api_version: get_in(raw, ["info", "version"]),
      resources: resources,
      path_specs: path_specs,
      event_types: event_types,
      resource_docs: resource_docs,
      schema_index: schema_index
    }
  end

  # -- Polar Resource Extraction from Paths ----------------------------------
  # Build resources from OpenAPI operations grouped by tags.
  # Each primary tag becomes a service class.

  defp extract_polar_resources(paths, schema_index) do
    # Collect all operations grouped by their primary tag
    operations_by_tag =
      paths
      |> Enum.flat_map(fn {path, methods} ->
        methods
        |> Enum.filter(fn {method, _} -> method in ["get", "post", "delete", "put", "patch"] end)
        |> Enum.map(fn {method, spec} ->
          tags = spec["tags"] || []
          primary_tag = hd(tags) || "default"

          %{
            path: path,
            method: String.to_atom(method),
            summary: spec["summary"],
            description: spec["description"],
            tags: tags,
            primary_tag: primary_tag,
            spec: spec
          }
        end)
      end)
      |> Enum.group_by(& &1.primary_tag)

    # Split customer_portal into sub-services by path segment
    {portal_ops, regular_tags} = Map.pop(operations_by_tag, "customer_portal", [])

    regular_resources =
      Enum.map(regular_tags, fn {tag, tag_ops} ->
        build_tag_resource(tag, "", tag_ops, schema_index)
      end)

    portal_resources = build_customer_portal_resources(portal_ops, schema_index)

    regular_resources ++ portal_resources
  end

  defp build_tag_resource(tag, package, tag_ops, schema_index) do
    sanitized_tag = String.replace(tag, "-", "_")
    class_name = Macro.camelize(sanitized_tag)
    schema_id = "#{class_name}Resource"

    {properties, inner_types} = extract_properties_from_ops(tag_ops, schema_index)

    %{
      schema_id: schema_id,
      resource_id: nil,
      class_name: class_name,
      package: package,
      object_name: tag,
      title: Macro.camelize(tag),
      description: "#{class_name} API operations.",
      properties: Enum.sort_by(properties, & &1.name),
      required: MapSet.new(),
      expandable_fields: [],
      has_collection: false,
      has_search_result: false,
      operations: tag_ops |> Enum.map(&build_operation(&1, class_name, package)),
      inner_types: inner_types,
      has_object_prop: false,
      is_primary: true
    }
  end

  defp build_customer_portal_resources([], _schema_index), do: []

  defp build_customer_portal_resources(portal_ops, schema_index) do
    portal_ops
    |> Enum.group_by(&customer_portal_sub_group/1)
    |> Enum.map(fn {sub_group, ops} ->
      build_tag_resource(sub_group, "CustomerPortal", ops, schema_index)
    end)
  end

  defp customer_portal_sub_group(%{path: path}) do
    case String.split(path, "/") do
      ["", "v1", "customer-portal", segment | _] -> segment
      _ -> "general"
    end
  end

  defp extract_properties_from_ops(ops, schema_index) do
    # Extract schemas from operation responses, preferring success status codes
    schema_refs =
      ops
      |> Enum.flat_map(fn op ->
        responses = op.spec["responses"] || %{}

        # Prefer 2xx success responses over others
        success_responses =
          responses
          |> Enum.filter(fn {status, _} ->
            String.match?(status, ~r/^2[0-9]{2}$/)
          end)
          |> Enum.concat(responses)
          |> Enum.uniq_by(fn {k, _} -> k end)

        success_responses
        |> Enum.flat_map(fn {_status, response} ->
          # Look for schema ref in response content
          schema = get_in(response, ["content", "application/json", "schema"])

          if schema && Map.has_key?(schema, "$ref") do
            [ref_to_name(schema["$ref"])]
          else
            []
          end
        end)
      end)
      |> Enum.uniq()

    # Prefer schemas that aren't list/pagination wrappers or error types
    # First, filter out schemas with blacklisted keywords
    candidates =
      Enum.filter(schema_refs, fn ref ->
        not String.contains?(ref, ["List", "Resource_", "Search", "Error", "NotFound", "Validation", "HTTP"])
      end)

    # Prefer shorter, simpler schemas (usually the main resource)
    preferred_schema =
      case Enum.sort_by(candidates, &String.length/1) do
        [] -> List.first(schema_refs)
        [first | _] -> first
      end

    case preferred_schema do
      nil ->
        {[], %{}}

      schema_id ->
        # Look up the schema and extract its properties
        case Map.get(schema_index, schema_id) do
          nil ->
            # If schema not found, try to extract from list wrapper
            # e.g., ListResource_Organization_ -> extract Organization ref from items
            result = extract_from_list_schema(schema_refs, schema_index)

            # If still not found, fall back to using any candidate
            case result do
              {[], %{}} ->
                # Try any of the candidate schemas that weren't filtered
                Enum.find_value(candidates, {[], %{}}, fn ref ->
                  case try_resolve_union_type(ref, schema_index) do
                    nil -> nil
                    {_, schema} when schema != nil -> extract_properties(schema, schema_index)
                    _ -> nil
                  end
                end)

              res ->
                res
            end

          schema ->
            # Check if it's a union type and resolve it
            case try_resolve_union_type(schema_id, schema_index) do
              {_, resolved_schema} when resolved_schema != nil ->
                extract_properties(resolved_schema, schema_index)

              _ ->
                extract_properties(schema, schema_index)
            end
        end
    end
  end

  defp extract_from_list_schema(schema_refs, schema_index) do
    # Try to find a list wrapper and extract the item type
    Enum.find_value(schema_refs, {[], %{}}, fn schema_id ->
      case Map.get(schema_index, schema_id) do
        nil ->
          nil

        schema ->
          # Look for items with a $ref (typical of list schemas)
          items_schema = get_in(schema, ["properties", "items", "items"])

          if items_schema && Map.has_key?(items_schema, "$ref") do
            item_ref = ref_to_name(items_schema["$ref"])

            case Map.get(schema_index, item_ref) do
              nil -> nil
              item_schema -> extract_properties(item_schema, schema_index)
            end
          else
            nil
          end
      end
    end)
  end

  defp try_resolve_union_type(schema_id, schema_index) do
    # If a schema is a union (anyOf), try to extract properties from the first variant
    case Map.get(schema_index, schema_id) do
      nil ->
        nil

      schema ->
        case schema["anyOf"] do
          nil ->
            # Not a union, return as-is
            {schema_id, schema}

          variants when is_list(variants) and variants != [] ->
            # Get the first ref variant
            first_variant = List.first(variants)

            if Map.has_key?(first_variant, "$ref") do
              ref_name = ref_to_name(first_variant["$ref"])
              {ref_name, Map.get(schema_index, ref_name)}
            else
              nil
            end

          _ ->
            nil
        end
    end
  end

  defp build_operation(op, class_name, package) do
    path = op.path
    path_params = extract_path_params(path)
    # Convert method summary to method name: "List Organizations" -> "list_organizations"
    method_name = (op.summary || "default") |> String.downcase() |> String.replace(~r/[^a-z0-9_]/, "_")

    response_schema = extract_response_schema_ref(op.spec)

    %{
      method_name: method_name,
      method_type: "instance",
      http_method: op.method,
      path: path,
      path_params: path_params,
      service_class: class_name,
      service_package: package,
      base_address: nil,
      api_mode: if(String.starts_with?(path, "/v2"), do: :v2, else: :v1),
      response_schema: response_schema
    }
  end

  # -- Schema Index -----------------------------------------------------------

  defp build_schema_index(schemas) do
    schemas
    |> Enum.filter(fn {_k, v} -> is_map(v) end)
    |> Map.new()
  end

  defp extract_properties(schema, schema_index) do
    raw_props = resolve_properties(schema, schema_index)

    {properties, inner_types} =
      Enum.reduce(raw_props, {[], %{}}, fn {name, prop_schema}, {props_acc, inners_acc} ->
        {type, new_inners} = resolve_type(name, prop_schema, schema_index)

        prop = %{
          name: name,
          type: type,
          description: prop_schema["description"],
          enum: prop_schema["enum"],
          format: prop_schema["format"],
          nullable: prop_schema["nullable"] == true,
          max_length: prop_schema["maxLength"],
          deprecated: prop_schema["deprecated"] == true
        }

        {[prop | props_acc], Map.merge(inners_acc, new_inners)}
      end)

    {Enum.reverse(properties), inner_types}
  end

  # Resolve properties, handling allOf by merging all branches
  defp resolve_properties(schema, schema_index) do
    cond do
      Map.has_key?(schema, "allOf") ->
        schema["allOf"]
        |> Enum.flat_map(fn branch ->
          resolved = resolve_ref_or_inline(branch, schema_index)
          Map.to_list(resolved["properties"] || %{})
        end)
        |> Map.new()

      Map.has_key?(schema, "properties") ->
        schema["properties"]

      true ->
        %{}
    end
  end

  # -- Type Resolution --------------------------------------------------------

  defp resolve_type(field_name, schema, schema_index) do
    do_resolve_type(field_name, schema, schema_index)
  end

  defp do_resolve_type(_field_name, %{"$ref" => ref}, _schema_index) do
    ref_name = ref_to_name(ref)
    {{:ref, ref_name}, %{}}
  end

  defp do_resolve_type(field_name, %{"anyOf" => variants} = schema, schema_index) do
    resolve_union(field_name, variants, schema, schema_index)
  end

  defp do_resolve_type(field_name, %{"oneOf" => variants} = schema, schema_index) do
    resolve_union(field_name, variants, schema, schema_index)
  end

  defp do_resolve_type(field_name, %{"type" => "array", "items" => items}, schema_index) do
    {inner_type, inner_types} = resolve_type(field_name, items, schema_index)
    {{:list, inner_type}, inner_types}
  end

  defp do_resolve_type(field_name, %{"type" => "object", "properties" => props}, schema_index)
       when map_size(props) > 0 do
    inner_name = Macro.camelize(field_name)
    {inner_props, nested_inners} = extract_inner_type_props(props, schema_index)
    inner_type = %{class_name: inner_name, properties: inner_props, inner_types: nested_inners}
    {{:inner, inner_name}, %{field_name => inner_type}}
  end

  defp do_resolve_type(_field_name, %{"type" => "object"}, _schema_index) do
    {:map, %{}}
  end

  defp do_resolve_type(_field_name, %{"type" => "string"}, _schema_index), do: {:string, %{}}
  defp do_resolve_type(_field_name, %{"type" => "integer"}, _schema_index), do: {:integer, %{}}
  defp do_resolve_type(_field_name, %{"type" => "number"}, _schema_index), do: {:float, %{}}
  defp do_resolve_type(_field_name, %{"type" => "boolean"}, _schema_index), do: {:boolean, %{}}

  # Fallback for schemas with no type
  defp do_resolve_type(_field_name, _schema, _schema_index), do: {:map, %{}}

  defp resolve_union(field_name, variants, _schema, schema_index) do
    # Filter out null/empty variants
    non_null = Enum.reject(variants, fn v -> v == %{"enum" => [""]} || v == %{} end)

    case non_null do
      [single] ->
        {type, inners} = resolve_type(field_name, single, schema_index)
        {{:nullable, type}, inners}

      _ ->
        # Check if it's nullable (has a "" enum variant)
        has_null = length(variants) > length(non_null)

        # For unions with refs, use the first ref as the primary type
        refs = Enum.filter(non_null, &Map.has_key?(&1, "$ref"))
        strings = Enum.filter(non_null, &(&1["type"] == "string"))

        cond do
          # Single ref + string = expandable field pattern
          length(refs) == 1 && strings != [] ->
            ref_name = ref_to_name(refs |> hd() |> Map.get("$ref"))

            type =
              if has_null, do: {:nullable, {:ref, ref_name}}, else: {:ref, ref_name}

            {type, %{}}

          # Multiple refs (union of object types) - treat as map
          length(refs) > 1 ->
            type = if has_null, do: {:nullable, :map}, else: :map
            {type, %{}}

          # Single non-ref type
          length(non_null) == 1 ->
            {type, inners} = resolve_type(field_name, hd(non_null), schema_index)
            type = if has_null, do: {:nullable, type}, else: type
            {type, inners}

          true ->
            type = if has_null, do: {:nullable, :map}, else: :map
            {type, %{}}
        end
    end
  end

  defp extract_inner_type_props(props, schema_index) do
    Enum.reduce(props, {[], %{}}, fn {name, prop_schema}, {props_acc, inners_acc} ->
      {type, new_inners} = resolve_type(name, prop_schema, schema_index)

      prop = %{
        name: name,
        type: type,
        description: prop_schema["description"],
        enum: prop_schema["enum"],
        format: prop_schema["format"],
        nullable: prop_schema["nullable"] == true,
        max_length: prop_schema["maxLength"],
        deprecated: prop_schema["deprecated"] == true
      }

      {[prop | props_acc], Map.merge(inners_acc, new_inners)}
    end)
    |> then(fn {props, inners} -> {Enum.sort_by(props, & &1.name), inners} end)
  end

  defp extract_path_params(path) do
    ~r/\{(\w+)\}/
    |> Regex.scan(path)
    |> Enum.map(fn [_, param] -> param end)
  end

  # -- Path Spec Parsing (for params generation) ------------------------------

  defp parse_paths(paths) do
    paths
    |> Enum.flat_map(fn {path, methods} ->
      methods
      |> Enum.filter(fn {method, _} -> method in ["get", "post", "delete", "put", "patch"] end)
      |> Enum.map(fn {method, spec} ->
        key = "#{String.upcase(method)} #{path}"
        params_schema = extract_params_schema(method, spec)
        query_params = extract_query_params(spec)

        {key,
         %{
           params_schema: params_schema,
           query_params: query_params,
           path: path,
           method: method,
           summary: spec["summary"],
           description: spec["description"],
           deprecated: spec["deprecated"] == true
         }}
      end)
    end)
    |> Map.new()
  end

  defp extract_params_schema("post", spec) do
    get_in(spec, ["requestBody", "content", "application/x-www-form-urlencoded", "schema"]) ||
      get_in(spec, ["requestBody", "content", "application/json", "schema"])
  end

  defp extract_params_schema("put", spec), do: extract_params_schema("post", spec)
  defp extract_params_schema("patch", spec), do: extract_params_schema("post", spec)
  defp extract_params_schema(_, _spec), do: nil

  defp extract_query_params(spec) do
    (spec["parameters"] || [])
    |> Enum.filter(fn p -> p["in"] == "query" end)
  end

  # -- Public Helpers for SchemaGenerator --------------------------------------

  @doc """
  Extract the success response $ref name from an operation spec.
  """
  def extract_response_schema_ref(op_spec) do
    responses = op_spec["responses"] || %{}

    success_response =
      Enum.find_value(["200", "201", "202", "204"], fn status ->
        responses[status]
      end)

    case success_response do
      nil ->
        nil

      response ->
        schema = get_in(response, ["content", "application/json", "schema"])
        extract_schema_ref(schema)
    end
  end

  defp extract_schema_ref(nil), do: nil
  defp extract_schema_ref(%{"$ref" => ref}), do: ref_to_name(ref)

  # oneOf/anyOf at top level — extract first $ref variant
  defp extract_schema_ref(%{"oneOf" => variants}) when is_list(variants) do
    extract_first_ref_variant(variants)
  end

  defp extract_schema_ref(%{"anyOf" => variants}) when is_list(variants) do
    extract_first_ref_variant(variants)
  end

  # Array response with items.$ref — extract the item type
  defp extract_schema_ref(%{"type" => "array", "items" => %{"$ref" => ref}}) do
    ref_to_name(ref)
  end

  defp extract_schema_ref(_), do: nil

  defp extract_first_ref_variant(variants) do
    Enum.find_value(variants, fn
      %{"$ref" => ref} -> ref_to_name(ref)
      _ -> nil
    end)
  end

  @doc """
  Resolve a response schema ref to the item schema name.
  If it's a list wrapper (e.g. ListResource_X_), extract the item type.
  Otherwise return the ref as-is.
  """
  def resolve_response_item_schema(ref, schema_index) do
    case Map.get(schema_index, ref) do
      nil ->
        ref

      schema ->
        # Check if this is a list wrapper with items.items.$ref
        # Real list wrappers (ListResource_*) always have both "items" and "pagination".
        # Domain objects like Order also have an "items" property (line items)
        # but NOT "pagination", so we must check for both.
        items_ref = get_in(schema, ["properties", "items", "items", "$ref"])
        has_pagination = Map.has_key?(schema["properties"] || %{}, "pagination")

        if items_ref && has_pagination do
          ref_to_name(items_ref)
        else
          ref
        end
    end
  end

  @doc """
  Returns true if the given schema ref is a list wrapper (e.g. ListResource_X_),
  meaning it has both an `items` array with $ref and a `pagination` property.
  """
  def list_response_schema?(ref, schema_index) do
    case Map.get(schema_index, ref) do
      nil ->
        false

      schema ->
        items_ref = get_in(schema, ["properties", "items", "items", "$ref"])
        has_pagination = Map.has_key?(schema["properties"] || %{}, "pagination")
        items_ref != nil && has_pagination
    end
  end

  # -- Event Type Parsing -----------------------------------------------------

  defp parse_event_types(raw, webhook_data_schemas) do
    parse_event_types_from_webhooks(raw, webhook_data_schemas)
  end

  defp parse_event_types_from_webhooks(raw, webhook_data_schemas) do
    webhooks = raw["webhooks"] || %{}
    schema_index = build_schema_index(raw["components"]["schemas"] || %{})

    webhooks
    |> Enum.flat_map(fn {webhook_key, methods} ->
      Enum.flat_map(methods, fn {_method, spec} ->
        body_schema =
          get_in(spec, ["requestBody", "content", "application/json", "schema"])

        case body_schema do
          %{"$ref" => ref} ->
            schema_name = ref_to_name(ref)
            schema = Map.get(schema_index, schema_name, %{})
            event_type = webhook_key
            data_schema_name = Map.get(webhook_data_schemas, event_type)

            [{event_type,
              %{
                data_ref: data_schema_name,
                kind: "webhook",
                description: schema["description"],
                data_schema: nil,
                has_related_object: false,
                schema_fields: [:type, :data, :timestamp]
              }}]

          _ ->
            []
        end
      end)
    end)
    |> Map.new()
  end

  defp parse_webhook_data_schemas(raw) do
    webhooks = raw["webhooks"] || %{}
    schema_index = build_schema_index(raw["components"]["schemas"] || %{})

    webhooks
    |> Enum.flat_map(fn {webhook_key, methods} ->
      Enum.flat_map(methods, fn {_method, spec} ->
        body_schema =
          get_in(spec, ["requestBody", "content", "application/json", "schema"])

        case body_schema do
          %{"$ref" => ref} ->
            wrapper_name = ref_to_name(ref)
            wrapper = Map.get(schema_index, wrapper_name, %{})

            # Use the webhook key as the event type
            event_type = webhook_key

            # Extract data schema ref from the wrapper's data property
            data_ref = get_in(wrapper, ["properties", "data", "$ref"])

            if data_ref do
              [{event_type, ref_to_name(data_ref)}]
            else
              # Check anyOf on the data property
              data_any_of = get_in(wrapper, ["properties", "data", "anyOf"]) || []

              ref_variant =
                Enum.find_value(data_any_of, fn
                  %{"$ref" => r} -> ref_to_name(r)
                  _ -> nil
                end)

              if ref_variant do
                [{event_type, ref_variant}]
              else
                []
              end
            end

          _ ->
            []
        end
      end)
    end)
    |> Map.new()
  end

  # -- Helpers ----------------------------------------------------------------

  defp ref_to_name("#/components/schemas/" <> name), do: name
  defp ref_to_name(ref), do: ref

  defp resolve_ref_or_inline(%{"$ref" => ref}, schema_index) do
    name = ref_to_name(ref)
    Map.get(schema_index, name, %{})
  end

  defp resolve_ref_or_inline(schema, _schema_index), do: schema
end
