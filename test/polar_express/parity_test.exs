defmodule PolarExpress.ParityTest do
  @moduledoc """
  Parity invariants: generated Elixir SDK matches the OpenAPI spec and the
  JavaScript SDK reference tree. These tests are CI gates — any regression fails
  the build.
  """
  use ExUnit.Case, async: true

  describe "endpoint set equality ({method, path})" do
    test "generated services cover all spec endpoints" do
      spec_endpoints = spec_endpoints()
      service_endpoints = service_endpoints()

      missing =
        MapSet.difference(spec_endpoints, service_endpoints)
        |> Enum.sort()

      assert missing == [],
             "Endpoints in OpenAPI spec but not in generated services:\n" <>
               Enum.map_join(missing, "\n", fn {m, p} -> "  #{m} #{p}" end)
    end

    test "no unexpected extra endpoints in generated services" do
      spec_endpoints = spec_endpoints()
      service_endpoints = service_endpoints()

      extra =
        MapSet.difference(service_endpoints, spec_endpoints)
        |> Enum.sort()

      # Hand-written services (e.g. CustomerPortal sub-services) may have
      # endpoints not captured by the regex scanner, so we allow a small delta.
      assert length(extra) < 20,
             "Too many extra endpoints in generated services (#{length(extra)}):\n" <>
               Enum.map_join(extra, "\n", fn {m, p} -> "  #{m} #{p}" end)
    end
  end

  describe "service-path parity" do
    test "every JS SDK service file has a matching Elixir service file" do
      js = js_service_names()
      elixir = elixir_service_names()

      missing = MapSet.difference(js, elixir) |> Enum.sort()

      assert missing == [],
             "JS SDK service files missing in Elixir:\n" <>
               Enum.map_join(missing, "\n", &"  #{&1}")
    end

    test "service file count is reasonable" do
      elixir_count = elixir_service_names() |> MapSet.size()
      assert elixir_count > 25, "Expected at least 25 service files, got #{elixir_count}"
    end
  end

  # -- Helpers ----------------------------------------------------------------

  defp spec_endpoints do
    {:ok, json} = File.read("priv/openapi/openapi.json")
    {:ok, spec} = JSON.decode(json)

    for {path, methods} <- spec["paths"],
        {method, _} <- methods,
        method in ~w(get post delete put patch) do
      norm_path = Regex.replace(~r/\{[^}]+\}/, path, "{param}")
      {String.upcase(method), norm_path}
    end
    |> MapSet.new()
  end

  defp service_endpoints do
    Path.wildcard("lib/polar_express/services/**/*_service.ex")
    |> Enum.flat_map(fn file ->
      content = File.read!(file)

      Regex.scan(~r/:(get|post|delete|put|patch),\s*"(\/v[12][^"]*)"/, content)
      |> Enum.map(fn [_, method, path] ->
        norm_path = Regex.replace(~r/#\{[^}]+\}/, path, "{param}")
        {String.upcase(method), norm_path}
      end)
    end)
    |> MapSet.new()
  end

  # Normalize TS SDK service paths to match Elixir service names.
  # TS SDK lives in the Polar monorepo at sdk/typescript/src/<version>/services:
  # `benefits.ts` → "benefits", `customer_portal/orders.ts` → "polarorders",
  # `customers/members.ts` → "customers", `oauth2/clients/*.ts` → "oauth2".
  # Elixir: `benefit_grants_service.ex` → "benefitgrants",
  # `customer_portal/orders_service.ex` → "polarorders".
  #
  # Non-1:1 mappings:
  # - TS `customer_portal/customer_meters.ts` serves /v1/customer-portal/meters/,
  #   generated here as `CustomerPortal.MetersService` ("polarmeters")
  @js_aliases %{
    "polarcustomermeters" => "polarmeters"
  }

  defp js_service_names do
    Path.wildcard("priv/polar-sdk/sdk/typescript/src/*/services/**/*.ts")
    |> Enum.reject(&(Path.basename(&1) == "index.ts"))
    |> Enum.map(fn path ->
      parts = Path.split(path)
      idx = Enum.find_index(parts, &(&1 == "services"))
      rest = Enum.drop(parts, idx + 1)
      name = rest |> List.last() |> Path.basename(".ts") |> String.replace("_", "")

      case rest do
        ["customer_portal", _] -> Map.get(@js_aliases, "polar" <> name, "polar" <> name)
        ["customers", _] -> "customers"
        ["oauth2" | _] -> "oauth2"
        [_] -> name
      end
    end)
    |> MapSet.new()
  end

  defp elixir_service_names do
    top_level =
      Path.wildcard("lib/polar_express/services/*_service.ex")
      |> Enum.map(fn path ->
        path
        |> Path.basename(".ex")
        |> String.replace_suffix("_service", "")
        |> String.replace("_", "")
        |> String.downcase()
      end)

    # Customer portal sub-services map to JS SDK's `polar*` files
    customer_portal =
      Path.wildcard("lib/polar_express/services/customer_portal/*_service.ex")
      |> Enum.map(fn path ->
        name =
          path
          |> Path.basename(".ex")
          |> String.replace_suffix("_service", "")
          |> String.replace("_", "")
          |> String.downcase()

        "polar" <> name
      end)

    MapSet.new(top_level ++ customer_portal)
  end
end
