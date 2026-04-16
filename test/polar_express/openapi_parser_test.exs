defmodule PolarExpress.Generator.OpenAPIParserTest do
  use ExUnit.Case, async: true

  alias PolarExpress.Generator.OpenAPI

  @oneof_fixture "test/support/fixtures/oneof_spec.json"

  describe "union schemas at the resource level" do
    test "oneOf + discriminator resource merges properties from all variants" do
      spec = OpenAPI.parse(@oneof_fixture)

      [resource] = spec.resources
      names = resource.properties |> Enum.map(& &1.name) |> Enum.sort()

      assert names == ["a_only", "b_only", "id", "shared", "type"]
    end
  end
end
