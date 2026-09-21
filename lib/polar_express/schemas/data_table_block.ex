# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DataTableBlock do
  @moduledoc """
  DataTableBlock

  Tabular entities (orders, subscriptions, customers, ...).
  """

  @typedoc """
  * `columns`
  * `entity` - What the rows are, e.g. `subscriptions`.
  * `rows`
  * `title` - Heading rendered above the table. Nullable.
  * `total_count`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:columns, :entity, :rows, :title, :total_count, :type]

  @schema_name "DataTableBlock"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "columns" => PolarExpress.Schemas.DataTableColumn
    }
  end
end
