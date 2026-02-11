defmodule PolarExpress.Generator.EventGenerator do
  @moduledoc false

  alias PolarExpress.Generator.DocFormatter
  alias PolarExpress.Generator.Naming

  @file_header "# File generated from our OpenAPI spec"

  @doc """
  Generate event-related modules from parsed spec.

  Produces:
    - `events.ex` — flat list of all known event type strings
    - Per-event typed modules for webhook events
    - `unknown_event.ex` — fallback for unrecognized events

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
      @spec event_types() :: [String.t()]
      def event_types, do: @event_types

      @doc "Check if a string is a known event type."
      @spec valid_event_type?(String.t()) :: boolean()
      def valid_event_type?(type), do: type in @event_types
    end
    """

    {"lib/polar_express/events.ex", content}
  end

  # -- Per-Event Typed Modules ------------------------------------------------

  defp generate_per_event_modules(event_types) do
    event_types
    |> Enum.filter(fn {_type, meta} -> meta.kind == "webhook" end)
    |> Enum.sort_by(fn {type, _} -> type end)
    |> Enum.map(&generate_event_module/1)
  end

  defp generate_event_module({event_type, meta}) do
    module = Naming.event_module(event_type)
    file_path = Naming.module_to_path(module)
    module_name = inspect(module)

    data_schema_mod =
      if meta.data_ref do
        "PolarExpress.Schemas.#{meta.data_ref}"
      else
        nil
      end

    data_type =
      if data_schema_mod do
        "#{data_schema_mod}.t()"
      else
        "map()"
      end

    moduledoc = build_moduledoc(event_type, meta, data_schema_mod)

    content = """
    #{@file_header}
    defmodule #{module_name} do
      @moduledoc \"\"\"
      #{moduledoc}
      \"\"\"

      @typedoc \"\"\"
      * `type` - Always `"#{event_type}"`.
      * `data` - The event payload. See `#{data_schema_mod || "map"}`.
      * `timestamp` - ISO 8601 timestamp of when the event occurred.
      \"\"\"
      @type t :: %__MODULE__{
              type: String.t(),
              data: #{data_type},
              timestamp: String.t()
            }

      defstruct [:type, :data, :timestamp]

      @doc "Returns the event type string."
      @spec event_type() :: String.t()
      def event_type, do: "#{event_type}"
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

      @typedoc \"\"\"
      * `type` - The unrecognized event type string.
      * `data` - Raw event payload as a map.
      * `timestamp` - ISO 8601 timestamp of when the event occurred.
      \"\"\"
      @type t :: %__MODULE__{
              type: String.t(),
              data: map(),
              timestamp: String.t()
            }

      defstruct [:type, :data, :timestamp]
    end
    """

    {"lib/polar_express/events/unknown_event.ex", content}
  end

  # -- Helpers ----------------------------------------------------------------

  defp build_moduledoc(event_type, meta, data_schema_mod) do
    base =
      case meta.description do
        nil -> nil
        "" -> nil
        desc -> DocFormatter.html_to_markdown(desc)
      end

    header = "Webhook event for `#{event_type}`."

    doc =
      case base do
        nil ->
          header

        md ->
          if String.match?(md, ~r/webhook/i) do
            md
          else
            "#{header}\n\n#{md}"
          end
      end

    doc =
      if data_schema_mod do
        "#{doc}\n\nThe `data` field contains a `#{data_schema_mod}` struct."
      else
        doc
      end

    DocFormatter.escape_for_heredoc(doc)
  end
end
