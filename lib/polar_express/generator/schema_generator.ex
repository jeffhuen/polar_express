defmodule PolarExpress.Generator.SchemaGenerator do
  @moduledoc false

  alias PolarExpress.Generator.DocFormatter

  alias PolarExpress.Generator.Naming

  @file_header "# File generated from our OpenAPI spec"

  # Input-only schema suffixes — skip these (request body types, not response types)

  @doc """
  Generate standalone schema modules from OpenAPI component schemas.

  Produces one module per response-relevant schema under `PolarExpress.Schemas.*`.
  Each module has:
  - `defstruct` with all property names as atom keys
  - `@type t` with proper typespecs
  - `__inner_types__/0` mapping field names to nested schema modules or union descriptors
  - `__date_fields__/0` listing fields with date-time format (when present)

  Union modules additionally define:
  - `__variants__/0` listing variant modules
  - `__discriminator__/0` (when a discriminator is declared in the spec)

  Returns `[{file_path, content}]`.
  """
  def generate(spec) do
    schema_index = spec.schema_index

    # Collect all schema names referenced in responses (direct + nested)
    # response_schemas = collect_response_schemas(spec)
    # all_needed = expand_dependencies(response_schemas, schema_index)

    # For SDK parity, we want ALL schemas defined in components/schemas
    all_needed = Map.keys(schema_index)

    # Generate a module for each needed schema
    all_needed
    |> Enum.sort()
    |> Enum.flat_map(fn schema_name ->
      case Map.get(schema_index, schema_name) do
        nil ->
          []

        schema ->
          cond do
            # input_only?(schema_name) ->
            #   []

            map_type_schema?(schema) ->
              [{file_path(schema_name), generate_map_module(schema_name, schema, schema_index)}]

            object_schema?(schema) ->
              [{file_path(schema_name), generate_module(schema_name, schema, schema_index)}]

            union_schema?(schema) ->
              [{file_path(schema_name), generate_union_module(schema_name, schema, schema_index)}]

            enum_schema?(schema) ->
              [{file_path(schema_name), generate_enum_module(schema_name, schema)}]

            true ->
              []
          end
      end
    end)
  end

  # -- Module generation (object schemas with defstruct) ----------------------

  defp generate_module(schema_name, schema, schema_index) do
    module_name = "PolarExpress.Schemas.#{sanitize_module_name(schema_name)}"
    props = resolve_properties(schema, schema_index)
    prop_names = props |> Enum.map(fn {name, _} -> name end) |> Enum.sort()

    struct_fields = Enum.map_join(prop_names, ", ", fn name -> ":#{name}" end)

    type_fields =
      prop_names
      |> Enum.map_join(",\n", fn name ->
        prop_schema = Map.get(props, name, %{})
        type_str = property_typespec(prop_schema, schema_index)
        "          #{name}: #{type_str}"
      end)

    inner_types_fn = generate_inner_types_fn(props, schema_index)
    date_fields_fn = generate_date_fields_fn(props)

    # @moduledoc — use DocFormatter for proper HTML-to-markdown conversion
    title = schema["title"]
    description = schema["description"]

    moduledoc_content =
      DocFormatter.schema_moduledoc(title, description) || "#{schema_name} schema."

    moduledoc = ~s(  @moduledoc """\n  #{moduledoc_content}\n  """)

    # @typedoc — build field descriptions from OpenAPI property schemas
    prop_docs =
      Enum.map(prop_names, fn name ->
        prop_schema = props[name] || %{}

        %{
          name: name,
          description: prop_schema["description"],
          enum: prop_schema["enum"],
          format: prop_schema["format"],
          nullable: nullable_property?(prop_schema),
          max_length: prop_schema["maxLength"],
          deprecated: prop_schema["deprecated"] == true
        }
      end)

    typedoc =
      case DocFormatter.build_typedoc_table(prop_docs) do
        nil -> ""
        table -> "\n  @typedoc \"\"\"\n#{table}\n  \"\"\""
      end

    """
    #{@file_header}
    defmodule #{module_name} do
    #{moduledoc}
    #{typedoc}
      @type t :: %__MODULE__{
    #{type_fields}
        }

      defstruct [#{struct_fields}]

      @schema_name "#{schema_name}"
      def schema_name, do: @schema_name
    #{inner_types_fn}#{date_fields_fn}end
    """
  end

  # -- Map-type module generation (type: object with no properties) -----------

  defp generate_map_module(schema_name, schema, schema_index) do
    module_name = "PolarExpress.Schemas.#{sanitize_module_name(schema_name)}"

    description = schema["description"]

    moduledoc =
      if description && description != "" do
        escaped = String.replace(description, "\"\"\"", ~S(\"\"\"))
        ~s(  @moduledoc """\n  #{escaped}\n  """)
      else
        ~s(  @moduledoc "#{schema_name} - a map type with dynamic keys.")
      end

    map_type =
      if Map.has_key?(schema, "additionalProperties") do
        value_type = additional_props_typespec(schema["additionalProperties"], schema_index)
        "%{String.t() => #{value_type}}"
      else
        "map()"
      end

    """
    #{@file_header}
    defmodule #{module_name} do
    #{moduledoc}

      @type t :: #{map_type}

      @schema_name "#{schema_name}"
      def schema_name, do: @schema_name
    end
    """
  end

  # -- Union module generation (anyOf/oneOf with multiple $ref variants) ------

  defp generate_union_module(schema_name, schema, schema_index) do
    module_name = "PolarExpress.Schemas.#{sanitize_module_name(schema_name)}"
    variants = schema["anyOf"] || schema["oneOf"] || []
    discriminator = schema["discriminator"]

    variant_modules =
      variants
      |> Enum.flat_map(fn
        %{"$ref" => ref} -> ["PolarExpress.Schemas.#{sanitize_module_name(ref_to_name(ref))}"]
        _ -> []
      end)

    variant_types = Enum.map(variant_modules, &"#{&1}.t()")

    type_union =
      case variant_types do
        [] -> "term()"
        types -> Enum.join(types, "\n           | ")
      end

    description = schema["description"]

    moduledoc =
      if description && description != "" do
        escaped = String.replace(description, "\"\"\"", ~S(\"\"\"))
        ~s(  @moduledoc """\n  #{escaped}\n  """)
      else
        ~s(  @moduledoc "#{schema_name} union type.")
      end

    variants_fn = generate_variants_fn(variant_modules)
    discriminator_fn = generate_discriminator_fn(discriminator, schema_index)

    """
    #{@file_header}
    defmodule #{module_name} do
    #{moduledoc}

      @type t :: #{type_union}

      @schema_name "#{schema_name}"
      def schema_name, do: @schema_name
    #{variants_fn}#{discriminator_fn}end
    """
  end

  defp generate_variants_fn([]), do: ""

  defp generate_variants_fn(variant_modules) do
    mods_str =
      variant_modules
      |> Enum.map_join(",\n      ", & &1)

    """

      def __variants__ do
        [
          #{mods_str}
        ]
      end
    """
  end

  defp generate_discriminator_fn(nil, _schema_index), do: ""

  defp generate_discriminator_fn(%{"propertyName" => prop, "mapping" => mapping}, _schema_index)
       when is_map(mapping) do
    mapping_entries =
      mapping
      |> Enum.sort_by(fn {k, _} -> k end)
      |> Enum.map_join(",\n        ", fn {val, ref} ->
        mod = "PolarExpress.Schemas.#{sanitize_module_name(ref_to_name(ref))}"
        ~s("#{val}" => #{mod})
      end)

    """

      def __discriminator__ do
        {"#{prop}", %{
          #{mapping_entries}
        }}
      end
    """
  end

  defp generate_discriminator_fn(_, _schema_index), do: ""

  # -- Inner types generation -------------------------------------------------

  defp generate_inner_types_fn(props, schema_index) do
    entries =
      props
      |> Enum.flat_map(fn {name, prop_schema} ->
        case resolve_inner_type(prop_schema, schema_index) do
          nil -> []
          value -> [{name, value}]
        end
      end)
      |> Enum.sort_by(fn {name, _} -> name end)

    if entries == [] do
      ""
    else
      inner_entries =
        entries
        |> Enum.map_join(",\n", fn {name, value} ->
          formatted = format_inner_type_value(value)
          ~s(      "#{name}" => #{formatted})
        end)

      """

        def __inner_types__ do
          %{
      #{inner_entries}
          }
        end
      """
    end
  end

  defp format_inner_type_value(module_str) when is_binary(module_str) do
    module_str
  end

  defp format_inner_type_value({:union, :discriminated, prop, mapping}) do
    mapping_entries =
      mapping
      |> Enum.sort_by(fn {k, _} -> k end)
      |> Enum.map_join(", ", fn {val, mod} ->
        ~s("#{val}" => #{mod})
      end)

    ~s({:union, :discriminated, "#{prop}", %{#{mapping_entries}}})
  end

  defp format_inner_type_value({:union, :variants, modules}) do
    mods_str = Enum.join(modules, ", ")
    "{:union, :variants, [#{mods_str}]}"
  end

  defp format_inner_type_value({:map_values, inner}) do
    "{:map_values, #{format_inner_type_value(inner)}}"
  end

  defp format_inner_type_value({:map_values_list, inner}) do
    "{:map_values_list, #{format_inner_type_value(inner)}}"
  end

  # -- Date fields generation -------------------------------------------------

  defp generate_date_fields_fn(props) do
    date_fields =
      props
      |> Enum.flat_map(fn {name, prop_schema} ->
        if date_time_field?(prop_schema), do: [name], else: []
      end)
      |> Enum.sort()

    if date_fields == [] do
      ""
    else
      fields_str = Enum.map_join(date_fields, ", ", &":#{&1}")

      """

        def __date_fields__, do: [#{fields_str}]
      """
    end
  end

  defp date_time_field?(%{"format" => "date-time"}), do: true

  defp date_time_field?(%{"anyOf" => variants}) do
    Enum.any?(variants, &date_time_field?/1)
  end

  defp date_time_field?(%{"oneOf" => variants}) do
    Enum.any?(variants, &date_time_field?/1)
  end

  defp date_time_field?(_), do: false

  # -- Inner type resolution --------------------------------------------------
  # Returns nil, a module name string, or a union tuple
  # ({:union, :discriminated, prop, mapping} or {:union, :variants, [modules]})

  # Returns nil, a module name string, or a union tuple
  # ({:union, :discriminated, prop, mapping} or {:union, :variants, [modules]})

  defp resolve_inner_type(%{"$ref" => ref}, _schema_index) do
    ref_name = ref_to_name(ref)

    "PolarExpress.Schemas.#{sanitize_module_name(ref_name)}"
  end

  defp resolve_inner_type(%{"anyOf" => variants} = schema, schema_index) do
    resolve_union_inner(variants, schema["discriminator"], schema_index)
  end

  defp resolve_inner_type(%{"oneOf" => variants} = schema, schema_index) do
    resolve_union_inner(variants, schema["discriminator"], schema_index)
  end

  defp resolve_inner_type(%{"type" => "array", "items" => items}, schema_index) do
    resolve_inner_type(items, schema_index)
  end

  defp resolve_inner_type(%{"type" => "array", "prefixItems" => items}, _schema_index) do
    # Treat tuple as a union of all possible types in the tuple
    ref_names =
      items
      |> Enum.flat_map(fn
        %{"$ref" => ref} -> [ref_to_name(ref)]
        _ -> []
      end)
      |> Enum.uniq()

    if ref_names == [] do
      nil
    else
      modules = Enum.map(ref_names, &"PolarExpress.Schemas.#{sanitize_module_name(&1)}")
      {:union, :variants, modules}
    end
  end

  # Object with typed additionalProperties whose values are $ref or typed arrays
  defp resolve_inner_type(
         %{"type" => "object", "additionalProperties" => ap},
         schema_index
       )
       when is_map(ap) do
    resolve_additional_props_inner(ap, schema_index)
  end

  defp resolve_inner_type(_, _schema_index), do: nil

  # Map values are a $ref → {:map_values, Module}
  defp resolve_additional_props_inner(%{"$ref" => ref}, _schema_index) do
    ref_name = ref_to_name(ref)

    {:map_values, "PolarExpress.Schemas.#{sanitize_module_name(ref_name)}"}
  end

  # Map values are arrays of $ref or unions → {:map_values_list, inner}
  defp resolve_additional_props_inner(%{"type" => "array", "items" => items}, schema_index) do
    case resolve_inner_type(items, schema_index) do
      nil -> nil
      inner -> {:map_values_list, inner}
    end
  end

  defp resolve_additional_props_inner(_, _schema_index), do: nil

  # Unified handler for anyOf/oneOf variants
  defp resolve_union_inner(variants, discriminator, schema_index) do
    non_null =
      Enum.reject(variants, fn v ->
        v == %{"type" => "null"} or v == %{"enum" => [""]} or v == %{}
      end)

    case non_null do
      [single] ->
        # Single non-null variant (nullable wrapper) — recurse
        resolve_inner_type(single, schema_index)

      multiple when length(multiple) >= 2 ->
        # Multiple non-null variants — this is a union
        resolve_multi_ref_inner(multiple, discriminator, schema_index)

      _ ->
        nil
    end
  end

  # Resolve a multi-variant union to either a discriminated or variant tuple
  defp resolve_multi_ref_inner(variants, discriminator, _schema_index) do
    ref_names =
      variants
      |> Enum.flat_map(fn
        %{"$ref" => ref} -> [ref_to_name(ref)]
        _ -> []
      end)

    if ref_names == [] do
      nil
    else
      resolve_discriminated_union(ref_names, discriminator)
    end
  end

  defp resolve_discriminated_union(ref_names, discriminator) do
    if discriminator && is_map(discriminator["mapping"]) do
      prop = discriminator["propertyName"]

      mapping =
        discriminator["mapping"]
        |> Enum.map(fn {val, ref} ->
          {val, "PolarExpress.Schemas.#{sanitize_module_name(ref_to_name(ref))}"}
        end)
        |> Map.new()

      {:union, :discriminated, prop, mapping}
    else
      modules = Enum.map(ref_names, &"PolarExpress.Schemas.#{sanitize_module_name(&1)}")
      {:union, :variants, modules}
    end
  end

  # -- Typespec generation ----------------------------------------------------

  defp property_typespec(%{"$ref" => ref}, _schema_index) do
    ref_name = ref_to_name(ref)

    "PolarExpress.Schemas.#{sanitize_module_name(ref_name)}.t() | nil"
  end

  # date-time string — must be before generic string clause
  defp property_typespec(%{"type" => "string", "format" => "date-time"}, _),
    do: "DateTime.t() | nil"

  defp property_typespec(%{"type" => "string"}, _), do: "String.t() | nil"
  defp property_typespec(%{"type" => "integer"}, _), do: "integer() | nil"
  defp property_typespec(%{"type" => "number"}, _), do: "float() | nil"
  defp property_typespec(%{"type" => "boolean"}, _), do: "boolean() | nil"

  defp property_typespec(%{"type" => "array", "prefixItems" => items}, schema_index) do
    inner =
      Enum.map(items, fn item ->
        property_typespec(item, schema_index) |> String.replace(" | nil", "")
      end)
      |> Enum.uniq()
      |> Enum.join(" | ")

    "[#{inner}] | nil"
  end

  defp property_typespec(%{"type" => "array", "items" => items}, schema_index) do
    inner = property_typespec(items, schema_index) |> String.replace(" | nil", "")
    "[#{inner}] | nil"
  end

  defp property_typespec(%{"type" => "object", "additionalProperties" => ap}, schema_index)
       when is_map(ap) do
    value_type = additional_props_typespec(ap, schema_index)
    "%{String.t() => #{value_type}} | nil"
  end

  defp property_typespec(%{"type" => "object"}, _), do: "map() | nil"

  defp property_typespec(%{"anyOf" => variants} = schema, schema_index) do
    union_typespec(variants, schema["discriminator"], schema_index)
  end

  defp property_typespec(%{"oneOf" => variants} = schema, schema_index) do
    union_typespec(variants, schema["discriminator"], schema_index)
  end

  defp property_typespec(_, _), do: "term()"

  defp union_typespec(variants, _discriminator, schema_index) do
    non_null =
      Enum.reject(variants, fn v ->
        v == %{"type" => "null"} or v == %{"enum" => [""]} or v == %{}
      end)

    case non_null do
      [single] ->
        property_typespec(single, schema_index)

      multiple when length(multiple) >= 2 ->
        build_multi_variant_typespec(multiple, schema_index)

      _ ->
        "term()"
    end
  end

  defp build_multi_variant_typespec(multiple, schema_index) do
    types =
      multiple
      |> Enum.flat_map(fn variant ->
        build_variant_type(variant, schema_index)
      end)

    case types do
      [] -> "term()"
      _ -> Enum.join(types, " | ") <> " | nil"
    end
  end

  defp build_variant_type(%{"$ref" => ref}, _index) do
    ref_name = ref_to_name(ref)
    ["PolarExpress.Schemas.#{sanitize_module_name(ref_name)}.t()"]
  end

  defp build_variant_type(other, index) do
    t = property_typespec(other, index) |> String.replace(" | nil", "")
    if t == "term()", do: [], else: [t]
  end

  # -- additionalProperties typespec ------------------------------------------

  defp additional_props_typespec(%{"$ref" => ref}, _schema_index) do
    ref_name = ref_to_name(ref)

    "PolarExpress.Schemas.#{sanitize_module_name(ref_name)}.t()"
  end

  defp additional_props_typespec(%{"type" => "string"}, _), do: "String.t()"
  defp additional_props_typespec(%{"type" => "integer"}, _), do: "integer()"
  defp additional_props_typespec(%{"type" => "number"}, _), do: "float()"
  defp additional_props_typespec(%{"type" => "boolean"}, _), do: "boolean()"

  defp additional_props_typespec(%{"type" => "array", "items" => items}, schema_index) do
    inner = additional_props_typespec(items, schema_index)
    "[#{inner}]"
  end

  defp additional_props_typespec(%{"anyOf" => variants}, schema_index) do
    union_typespec(variants, nil, schema_index)
  end

  defp additional_props_typespec(%{"oneOf" => variants}, schema_index) do
    union_typespec(variants, nil, schema_index)
  end

  defp additional_props_typespec(_, _), do: "term()"

  # -- Schema type detection --------------------------------------------------

  # Map-type: type: "object" with no defined properties (e.g. MetadataOutputType)
  defp map_type_schema?(schema) do
    schema["type"] == "object" and
      not has_real_properties?(schema) and
      not Map.has_key?(schema, "allOf")
  end

  defp has_real_properties?(schema) do
    case schema["properties"] do
      props when is_map(props) and map_size(props) > 0 -> true
      _ -> false
    end
  end

  defp object_schema?(schema) do
    (has_real_properties?(schema) or Map.has_key?(schema, "allOf")) and
      not union_schema?(schema)
  end

  defp union_schema?(schema) do
    (Map.has_key?(schema, "anyOf") or Map.has_key?(schema, "oneOf")) and
      not has_real_properties?(schema)
  end

  defp enum_schema?(schema) do
    schema["type"] in ["string", "integer"] and is_list(schema["enum"])
  end

  # -- Enum module generation -------------------------------------------------

  defp generate_enum_module(schema_name, schema) do
    module_name = "PolarExpress.Schemas.#{sanitize_module_name(schema_name)}"
    base_type = if schema["type"] == "integer", do: "integer()", else: "String.t()"
    values = schema["enum"] || []

    values_doc =
      values
      |> Enum.map_join(", ", fn v -> "`#{v}`" end)

    description = schema["description"]

    moduledoc =
      if description && description != "" do
        escaped = String.replace(description, "\"\"\"", ~S(\"\"\"))
        ~s(  @moduledoc """\n  #{escaped}\n\n  Possible values: #{values_doc}\n  """)
      else
        ~s(  @moduledoc "#{schema_name} enum. Possible values: #{values_doc}.")
      end

    """
    #{@file_header}
    defmodule #{module_name} do
    #{moduledoc}

      @type t :: #{base_type}

      @values [
        #{Enum.map_join(values, ",\n    ", &inspect(&1))}
      ]

      @doc "List of valid enum values."
      def values, do: @values

      @schema_name "#{schema_name}"
      def schema_name, do: @schema_name
    end
    """
  end

  # -- Helpers ----------------------------------------------------------------

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

  defp file_path(schema_name) do
    snake = schema_name |> String.replace("-", "_") |> Naming.to_snake_case()
    "lib/polar_express/schemas/#{snake}.ex"
  end

  defp ref_to_name("#/components/schemas/" <> name), do: name
  defp ref_to_name(ref), do: ref

  # Sanitize schema names for use as Elixir module name segments.
  # Hyphens are invalid in module names — remove them (already PascalCase from spec).
  defp sanitize_module_name(name) do
    String.replace(name, "-", "")
  end

  # Check if a property schema is nullable (explicit flag or anyOf with null variant)
  defp nullable_property?(%{"nullable" => true}), do: true

  defp nullable_property?(%{"anyOf" => variants}) when is_list(variants) do
    Enum.any?(variants, fn
      %{"type" => "null"} -> true
      %{"enum" => [""]} -> true
      v when v == %{} -> true
      _ -> false
    end)
  end

  defp nullable_property?(%{"oneOf" => variants}) when is_list(variants) do
    nullable_property?(%{"anyOf" => variants})
  end

  defp nullable_property?(_), do: false

  defp resolve_ref_or_inline(%{"$ref" => ref}, schema_index) do
    name = ref_to_name(ref)
    Map.get(schema_index, name, %{})
  end

  defp resolve_ref_or_inline(schema, _schema_index), do: schema
end
