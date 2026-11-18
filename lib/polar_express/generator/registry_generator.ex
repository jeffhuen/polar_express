defmodule PolarExpress.Generator.RegistryGenerator do
  @moduledoc false

  alias PolarExpress.Generator.Naming

  @file_header "# File generated from our OpenAPI spec"

  @doc """
  Generate the registry modules: EventTypes and ApiVersion.
  Returns `[{file_path, content}]`.
  """
  def generate(spec) do
    [generate_event_types(spec.event_types), generate_api_version(spec.api_version)]
  end

  # The spec's info.version is the one statement of the API version the SDK
  # targets (priv/openapi/API_VERSION pins it, sync_openapi.sh checks it). A
  # missing or malformed value would generate a header Polar answers with 404.
  defp generate_api_version(version) do
    unless is_binary(version) and Regex.match?(~r/\A\d{4}-\d{2}\z/, version) do
      raise ArgumentError,
            "expected the spec's info.version to be a YYYY-MM Polar API version, " <>
              "got: #{inspect(version)}"
    end

    content = """
    #{@file_header}
    defmodule PolarExpress.ApiVersion do
      @moduledoc \"\"\"
      The Polar API version this SDK release was generated from.

      The client sends it as the `Polar-Version` header on every request, so
      the typed structs always match the contract the server answers with. Pass
      `:api_version` to `PolarExpress.client/2`, or to a single request, to
      send another version.
      \"\"\"

      @version "#{version}"

      @doc "Returns the Polar API version this SDK release was generated from."
      @spec version() :: String.t()
      def version, do: @version
    end
    """

    {"lib/polar_express/api_version.ex", content}
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
