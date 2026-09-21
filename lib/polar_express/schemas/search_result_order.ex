# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SearchResultOrder do
  @moduledoc """
  SearchResultOrder
  """

  @typedoc """
  * `amount`
  * `currency`
  * `customer_email` - Nullable.
  * `customer_name` - Nullable.
  * `id` - Format: uuid4.
  * `product_name`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:amount, :currency, :customer_email, :customer_name, :id, :product_name, :type]

  @schema_name "SearchResultOrder"
  def schema_name, do: @schema_name
end
