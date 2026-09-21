# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CatalogImportNotReady do
  @moduledoc """
  CatalogImportNotReady
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "CatalogImportNotReady"
  def schema_name, do: @schema_name
end
