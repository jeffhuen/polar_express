defmodule PolarExpress.Generator.ResourceGenerator do
  @moduledoc false

  alias PolarExpress.Generator.DocFormatter
  alias PolarExpress.Generator.Naming

  @file_header "# File generated from our OpenAPI spec"

  @doc """
  Generate resource modules from parsed spec.
  Returns `[{file_path, content}]`.
  """
  def generate(spec) do
    spec.resources
    |> Enum.filter(& &1.is_primary)
    |> Enum.map(fn resource ->
      generate_resource(resource)
    end)
  end

  defp generate_resource(resource) do
    module = Naming.resource_module(resource.class_name, resource.package)
    path = Naming.module_to_path(module)

    props = resource.properties
    expandable_set = MapSet.new(resource.expandable_fields)

    struct_fields = Enum.map_join(props, ", ", fn p -> ":#{p.name}" end)

    expandable_line =
      if resource.expandable_fields != [] do
        fields = Enum.map_join(resource.expandable_fields, ", ", &"\"#{&1}\"")
        "\n  def expandable_fields, do: [#{fields}]\n"
      else
        ""
      end

    inner_type_blocks = generate_inner_types(resource.inner_types, "  ")

    inner_types_fn =
      if map_size(resource.inner_types) > 0 do
        entries =
          resource.inner_types
          |> Enum.sort_by(fn {name, _} -> name end)
          |> Enum.map_join(",\n", fn {name, inner} ->
            ~s(    "#{name}" => __MODULE__.#{inner.class_name})
          end)

        """

          def __inner_types__ do
            %{
        #{entries}
            }
          end
        """
      else
        ""
      end

    # @moduledoc from schema title + description
    moduledoc_content =
      DocFormatter.schema_moduledoc(resource.title, resource.description) ||
        "#{resource.class_name} resource."

    moduledoc = ~s(  @moduledoc """\n  #{moduledoc_content}\n  """)

    # @typedoc from property descriptions
    enriched_props =
      Enum.map(props, fn p ->
        Map.put(p, :expandable, MapSet.member?(expandable_set, p.name))
      end)

    typedoc =
      case DocFormatter.build_typedoc_table(enriched_props) do
        nil -> ""
        table -> "\n  @typedoc \"\"\"\n#{table}\n  \"\"\""
      end

    content = """
    #{@file_header}
    defmodule #{inspect(module)} do
    #{moduledoc}
    #{typedoc}
      @type t :: %__MODULE__{}

      defstruct [#{struct_fields}]

      @object_name "#{resource.object_name}"
      def object_name, do: @object_name
    #{expandable_line}#{inner_type_blocks}#{inner_types_fn}end
    """

    {path, content}
  end

  defp generate_inner_types(inner_types, indent) when map_size(inner_types) == 0 do
    _ = indent
    ""
  end

  defp generate_inner_types(inner_types, indent) do
    inner_types
    |> Enum.sort_by(fn {name, _} -> name end)
    |> Enum.map_join("", fn {_name, inner} ->
      generate_inner_type_module(inner, indent)
    end)
  end

  defp generate_inner_type_module(inner, indent) do
    props = Enum.sort_by(inner.properties, & &1.name)
    struct_fields = Enum.map_join(props, ", ", fn p -> ":#{p.name}" end)

    nested_blocks = generate_inner_types(inner[:inner_types] || inner.inner_types, indent <> "  ")

    typedoc =
      case DocFormatter.build_typedoc_table(props) do
        nil -> ""
        table -> "\n#{indent}  @typedoc \"\"\"\n#{table}\n#{indent}  \"\"\""
      end

    """

    #{indent}defmodule #{inner.class_name} do
    #{indent}  @moduledoc false
    #{typedoc}
    #{indent}  @type t :: %__MODULE__{}
    #{indent}  defstruct [#{struct_fields}]
    #{nested_blocks}#{indent}end
    """
  end
end
