# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductNotDeletable do
  @moduledoc """
  ProductNotDeletable
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "ProductNotDeletable"
  def schema_name, do: @schema_name
end
