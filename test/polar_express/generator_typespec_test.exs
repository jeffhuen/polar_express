defmodule PolarExpress.Generator.TypespecTest do
  use ExUnit.Case, async: true

  alias PolarExpress.Generator.OpenAPI
  alias PolarExpress.Generator.ResourceGenerator
  alias PolarExpress.Generator.SchemaGenerator

  @fixture "test/support/fixtures/oneof_spec.json"

  test "schema object types stay shallow without losing docs or structs" do
    spec = OpenAPI.parse(@fixture)

    {_path, content} =
      Enum.find(SchemaGenerator.generate(spec), fn {path, _content} ->
        path == "lib/polar_express/schemas/widget_a.ex"
      end)

    assert content =~ "@typedoc"
    assert content =~ "@type t :: %__MODULE__{}"
    assert content =~ "defstruct [:a_only, :id, :shared, :type]"
    refute content =~ "id: String.t()"
  end

  test "resource types stay shallow without losing docs or structs" do
    spec = OpenAPI.parse(@fixture)

    {_path, content} =
      Enum.find(ResourceGenerator.generate(spec), fn {path, _content} ->
        path == "lib/polar_express/resources/widgets.ex"
      end)

    assert content =~ "@typedoc"
    assert content =~ "@type t :: %__MODULE__{}"
    assert content =~ "defstruct [:a_only, :b_only, :id, :shared, :type]"
    refute content =~ "id: String.t()"
  end
end
