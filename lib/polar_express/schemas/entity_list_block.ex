# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EntityListBlock do
  @moduledoc """
  EntityListBlock

  A few entities as a compact list; same shape as the table so the
  client formats values (currency, dates) identically in both.
  """

  @typedoc """
  * `columns`
  * `entity` - What the items are, e.g. `orders`.
  * `rows`
  * `title` - Heading rendered above the list. Nullable.
  * `total_count`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:columns, :entity, :rows, :title, :total_count, :type]

  @schema_name "EntityListBlock"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "columns" => PolarExpress.Schemas.DataTableColumn
    }
  end
end
