defmodule PolarExpress.Generator.RegistryGeneratorTest do
  use ExUnit.Case, async: true

  alias PolarExpress.Generator.RegistryGenerator

  defp generate(api_version),
    do: RegistryGenerator.generate(%{event_types: %{}, api_version: api_version})

  test "emits the spec's version as the SDK's API version" do
    {_, content} =
      generate("2027-01")
      |> Enum.find(fn {path, _} -> path == "lib/polar_express/api_version.ex" end)

    assert content =~ ~s(@version "2027-01")
  end

  test "refuses to generate a version Polar would reject with 404" do
    for bad <- [nil, "", "latest", "2027-1", "2027-01-15", "v2027-01"] do
      assert_raise ArgumentError, ~r/YYYY-MM/, fn -> generate(bad) end
    end
  end
end
