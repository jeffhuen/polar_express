defmodule PolarExpress.Generator.RegistryGenerator do
  @moduledoc false

  alias PolarExpress.Generator.Naming

  @file_header "# File generated from our OpenAPI spec"

  @doc """
  Generate the EventTypes registry module.
  Returns `[{file_path, content}]`.
  """
  def generate(spec) do
    [generate_event_types(spec.event_types)]
  end

  defp generate_event_types(event_types) do
    schema_entries =
      event_types
      |> Enum.filter(fn {_type, %{data_ref: ref}} -> ref != nil end)
      |> Enum.sort_by(fn {type, _} -> type end)
      |> Enum.map_join(",\n", fn {type, %{data_ref: data_ref}} ->
        ~s(      "#{type}" => PolarExpress.Schemas.#{data_ref})
      end)

    module_entries =
      event_types
      |> Enum.sort_by(fn {type, _} -> type end)
      |> Enum.map_join(",\n", fn {type, _} ->
        mod = inspect(Naming.event_module(type))
        ~s(      "#{type}" => #{mod})
      end)

    content = """
    #{@file_header}
    defmodule PolarExpress.EventTypes do
      @moduledoc false

      @doc "Maps event type strings to their data schema module."
      def event_type_to_schema do
        %{
    #{schema_entries}
        }
      end

      @doc "Maps event type strings to their per-event typed module."
      def event_type_to_module do
        %{
    #{module_entries}
        }
      end
    end
    """

    {"lib/polar_express/event_types.ex", content}
  end
end
