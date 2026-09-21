# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DataTableColumn do
  @moduledoc """
  DataTableColumn
  """

  @typedoc """
  * `format`
  * `key`
  * `label`
  """
  @type t :: %__MODULE__{}

  defstruct [:format, :key, :label]

  @schema_name "DataTableColumn"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "format" => PolarExpress.Schemas.ColumnFormat
    }
  end
end
