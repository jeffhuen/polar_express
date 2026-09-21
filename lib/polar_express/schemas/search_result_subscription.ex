# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SearchResultSubscription do
  @moduledoc """
  SearchResultSubscription
  """

  @typedoc """
  * `amount`
  * `currency`
  * `customer_email` - Nullable.
  * `customer_name` - Nullable.
  * `id` - Format: uuid4.
  * `product_name`
  * `status`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :currency,
    :customer_email,
    :customer_name,
    :id,
    :product_name,
    :status,
    :type
  ]

  @schema_name "SearchResultSubscription"
  def schema_name, do: @schema_name
end
