# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CatalogImportBlocked do
  @moduledoc """
  CatalogImportBlocked
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "CatalogImportBlocked"
  def schema_name, do: @schema_name
end
