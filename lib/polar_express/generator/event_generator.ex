defmodule PolarExpress.Generator.EventGenerator do
  @moduledoc false

  alias PolarExpress.Generator.DocFormatter
  alias PolarExpress.Generator.Naming

  @file_header "# File generated from our OpenAPI spec"

  @doc """
  Generate event-related modules from parsed spec.

  Produces:
    - `events.ex` — flat list of all known event type strings
    - Per-event typed modules for thin events (matching JavaScript SDK's 21 event files)
    - `unknown_event_notification.ex` — fallback for unrecognized thin events

  Returns `[{file_path, content}]`.
  """
  def generate(spec) do
    constants = generate_event_constants(spec.event_types)
    per_event = generate_per_event_modules(spec.event_types)
    unknown = generate_unknown_event_notification()

    [constants | per_event] ++ [unknown]
  end

  # -- Event Constants (events.ex) --------------------------------------------

  defp generate_event_constants(event_types) do
    entries =
      event_types
      |> Enum.sort_by(fn {type, _} -> type end)
      |> Enum.map_join(",\n", fn {type, _} -> ~s(    "#{type}") end)

    content = """
    #{@file_header}
    defmodule PolarExpress.Events do
      @moduledoc "Known PolarExpress webhook event type constants."

      @event_types [
    #{entries}
      ]

      @doc "List of all known PolarExpress event types."
      def event_types, do: @event_types

      @doc "Check if a string is a known event type."
      def valid_event_type?(type), do: type in @event_types
    end
    """

    {"lib/polar_express/events.ex", content}
  end

  # -- Per-Event Typed Modules ------------------------------------------------

  defp generate_per_event_modules(event_types) do
    event_types
    |> Enum.filter(fn {_type, meta} -> meta.kind in ["thin", "webhook"] end)
    |> Enum.sort_by(fn {type, _} -> type end)
    |> Enum.map(&generate_event_module/1)
  end

  defp generate_event_module({event_type, meta}) do
    module = Naming.event_module(event_type)
    file_path = Naming.module_to_path(module)
    module_name = inspect(module)

    # For Polar webhook events, use simple struct with type/data/timestamp
    # For Stripe thin events, use schema-declared fields
    {fields, data_module_code, inner_types_code, fetch_fn} =
      if meta.kind == "webhook" do
        {":type, :data, :timestamp", "", "", ""}
      else
        fields = meta.schema_fields |> Enum.map_join(", ", fn f -> ":#{f}" end)
        data_tree = build_data_type_tree(meta.data_schema)
        data_module_code = if data_tree, do: render_data_module(data_tree, "Data"), else: ""

        inner_types_code =
          if data_tree do
            ~s(def __inner_types__, do: %{"data" => Data})
          else
            ""
          end

        fetch_fn =
          if meta.has_related_object do
            """
            def fetch_related_object(%__MODULE__{related_object: %{"url" => url}} = event, client) do
              opts = case Map.get(event, :context) do
                nil -> []
                ctx -> [polar_context: ctx]
              end
              PolarExpress.Client.request(client, :get, url, opts)
            end
            """
          else
            ""
          end

        {fields, data_module_code, inner_types_code, fetch_fn}
      end

    moduledoc =
      case meta.description do
        nil ->
          "Webhook event for `#{event_type}`."

        "" ->
          "Webhook event for `#{event_type}`."

        desc ->
          case DocFormatter.html_to_markdown(desc) do
            nil ->
              "Webhook event for `#{event_type}`."

            md ->
              # Ensure the moduledoc mentions "webhook" for discoverability
              md_with_webhook =
                if String.match?(md, ~r/webhook/i) do
                  md
                else
                  "Webhook event for `#{event_type}`.\n\n#{md}"
                end

              DocFormatter.escape_for_heredoc(md_with_webhook)
          end
      end

    content = """
    #{@file_header}
    defmodule #{module_name} do
      @moduledoc \"\"\"
      #{moduledoc}
      \"\"\"

    #{data_module_code}

      defstruct [#{fields}]

      def event_type, do: "#{event_type}"
      def lookup_type, do: "#{event_type}"

      #{inner_types_code}

      #{fetch_fn}
    end
    """

    {file_path, content}
  end

  # -- Unknown Event Notification (fallback) ----------------------------------

  defp generate_unknown_event_notification do
    content = """
    #{@file_header}
    defmodule PolarExpress.Events.UnknownEvent do
      @moduledoc "Fallback for unrecognized webhook events."

      defstruct [:type, :data, :timestamp]
    end
    """

    {"lib/polar_express/events/unknown_event.ex", content}
  end

  # -- Nested Data Type Tree --------------------------------------------------

  defp build_data_type_tree(nil), do: nil
  defp build_data_type_tree(%{"properties" => props}) when map_size(props) == 0, do: nil

  defp build_data_type_tree(%{"properties" => props}) when is_map(props) do
    fields = props |> Map.keys() |> Enum.sort()

    field_descriptions =
      Map.new(props, fn {name, schema} ->
        {name, %{name: name, description: schema["description"]}}
      end)

    children =
      for {name, prop_schema} <- props,
          child_schema = nested_object_schema(prop_schema),
          child_schema != nil do
        child_tree = build_data_type_tree(child_schema)
        if child_tree, do: {name, Macro.camelize(name), child_tree}, else: nil
      end
      |> Enum.reject(&is_nil/1)

    %{fields: fields, children: children, field_descriptions: field_descriptions}
  end

  defp build_data_type_tree(_), do: nil

  # Extract nested object schema from a property definition
  defp nested_object_schema(%{"type" => "object", "properties" => props})
       when is_map(props) and map_size(props) > 0,
       do: %{"properties" => props}

  defp nested_object_schema(%{
         "type" => "array",
         "items" => %{"type" => "object", "properties" => props}
       })
       when is_map(props) and map_size(props) > 0,
       do: %{"properties" => props}

  defp nested_object_schema(_), do: nil

  # -- Code Rendering ---------------------------------------------------------

  defp render_data_module(%{fields: fields, children: children} = tree, module_name) do
    child_code =
      children
      |> Enum.sort_by(fn {_, mod_name, _} -> mod_name end)
      |> Enum.map_join("\n", fn {_field, mod_name, subtree} ->
        render_data_module(subtree, mod_name)
      end)

    fields_str = fields |> Enum.map_join(", ", fn f -> ":#{f}" end)

    type_fields =
      fields
      |> Enum.map_join(",\n", fn f -> "        #{f}: term()" end)

    typedoc =
      case Map.get(tree, :field_descriptions) do
        descs when is_map(descs) and map_size(descs) > 0 ->
          props = descs |> Map.values() |> Enum.sort_by(& &1[:name])

          case DocFormatter.build_typedoc_table(props) do
            nil -> ""
            table -> "  @typedoc \"\"\"\n#{table}\n  \"\"\"\n"
          end

        _ ->
          ""
      end

    inner_types_code =
      if children != [] do
        entries =
          children
          |> Enum.sort_by(fn {_, mod, _} -> mod end)
          |> Enum.map_join(", ", fn {field, mod, _} -> ~s("#{field}" => #{mod}) end)

        "def __inner_types__, do: %{#{entries}}"
      else
        ""
      end

    """
    defmodule #{module_name} do
      @moduledoc false
      #{child_code}
    #{typedoc}  @type t :: %__MODULE__{
    #{type_fields}
        }

      defstruct [#{fields_str}]
      #{inner_types_code}
    end
    """
  end
end
