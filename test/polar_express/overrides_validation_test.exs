defmodule PolarExpress.OverridesValidationTest do
  @moduledoc """
  Mirrors the safety guards from Mix.Tasks.PolarExpress.Generate in the test
  suite so stale overrides and duplicate paths are caught by `mix test` without
  needing a full CI codegen run.
  """
  use ExUnit.Case, async: true

  alias PolarExpress.Generator.OpenAPI
  alias PolarExpress.Generator.Overrides

  describe "override key freshness" do
    setup do
      %{spec_endpoints: spec_endpoints()}
    end

    test "all operation_overrides keys reference live spec endpoints", %{
      spec_endpoints: endpoints
    } do
      stale =
        Overrides.operation_overrides()
        |> Map.keys()
        |> Enum.reject(&MapSet.member?(endpoints, &1))
        |> Enum.sort()

      assert stale == [],
             "Stale operation override keys (endpoint removed from spec):\n" <>
               Enum.map_join(stale, "\n", fn {m, p} -> "  #{m} #{p}" end)
    end

    test "all params_overrides keys reference live spec endpoints", %{
      spec_endpoints: endpoints
    } do
      stale =
        Overrides.params_overrides()
        |> Map.keys()
        |> Enum.reject(&MapSet.member?(endpoints, &1))
        |> Enum.sort()

      assert stale == [],
             "Stale params override keys (endpoint removed from spec):\n" <>
               Enum.map_join(stale, "\n", fn {m, p} -> "  #{m} #{p}" end)
    end

    test "operation override values all contain :service_class" do
      missing =
        Overrides.operation_overrides()
        |> Enum.reject(fn {_key, value} -> Map.has_key?(value, :service_class) end)
        |> Enum.map(fn {key, _} -> key end)
        |> Enum.sort()

      assert missing == [],
             "Operation overrides missing :service_class:\n" <>
               Enum.map_join(missing, "\n", fn {m, p} -> "  #{m} #{p}" end)
    end

    test "every operation override has a :reason" do
      missing =
        Overrides.operation_overrides()
        |> Enum.reject(fn {_key, value} ->
          is_binary(value[:reason]) and value[:reason] != ""
        end)
        |> Enum.map(fn {key, _} -> key end)
        |> Enum.sort()

      assert missing == [],
             "Operation overrides missing :reason:\n" <>
               Enum.map_join(missing, "\n", fn {m, p} -> "  #{m} #{p}" end)
    end

    test "every params override has a :reason" do
      missing =
        Overrides.params_overrides()
        |> Enum.reject(fn {_key, value} ->
          is_binary(value[:reason]) and value[:reason] != ""
        end)
        |> Enum.map(fn {key, _} -> key end)
        |> Enum.sort()

      assert missing == [],
             "Params overrides missing :reason:\n" <>
               Enum.map_join(missing, "\n", fn {m, p} -> "  #{m} #{p}" end)
    end
  end

  describe "spec parsing integrity" do
    setup do
      %{spec: OpenAPI.parse()}
    end

    test "spec parses successfully with an api_version", %{spec: spec} do
      assert is_binary(spec.api_version),
             "Expected api_version to be a string, got: #{inspect(spec.api_version)}"
    end

    test "spec contains resources", %{spec: spec} do
      assert is_list(spec.resources),
             "Expected resources to be a list"

      assert spec.resources != [],
             "Expected at least one resource from the spec"
    end

    test "spec contains path_specs", %{spec: spec} do
      assert is_map(spec.path_specs),
             "Expected path_specs to be a map"

      assert map_size(spec.path_specs) > 0,
             "Expected at least one path_spec from the spec"
    end

    test "every resource has required fields", %{spec: spec} do
      for resource <- spec.resources do
        assert is_binary(resource.schema_id),
               "Resource missing schema_id: #{inspect(resource)}"

        assert is_binary(resource.class_name),
               "Resource missing class_name: #{inspect(resource)}"

        assert is_list(resource.operations),
               "Resource #{resource.class_name} has non-list operations"

        assert is_list(resource.properties),
               "Resource #{resource.class_name} has non-list properties"
      end
    end

    test "no duplicate resource class_names among primary resources", %{spec: spec} do
      primaries = Enum.filter(spec.resources, & &1.is_primary)

      duplicates =
        primaries
        |> Enum.frequencies_by(fn r -> {r.package, r.class_name} end)
        |> Enum.filter(fn {_key, count} -> count > 1 end)

      assert duplicates == [],
             "Duplicate primary resource class_names:\n" <>
               Enum.map_join(duplicates, "\n", fn {{pkg, cls}, count} ->
                 "  #{pkg}.#{cls} (#{count}x)"
               end)
    end

    test "every operation has a valid http_method", %{spec: spec} do
      valid_methods = MapSet.new([:get, :post, :put, :patch, :delete])

      invalid =
        spec.resources
        |> Enum.flat_map(fn r ->
          Enum.reject(r.operations, fn op ->
            MapSet.member?(valid_methods, op.http_method)
          end)
        end)

      assert invalid == [],
             "Operations with invalid http_method:\n" <>
               Enum.map_join(invalid, "\n", fn op ->
                 "  #{op.http_method} #{op.path}"
               end)
    end
  end

  # -- Helpers ----------------------------------------------------------------

  defp spec_endpoints do
    {:ok, json} = File.read("priv/openapi/openapi.json")
    {:ok, spec} = JSON.decode(json)

    for {path, methods} <- spec["paths"],
        {method, _} <- methods,
        method in ~w(get post delete put patch) do
      {method, path}
    end
    |> MapSet.new()
  end
end
