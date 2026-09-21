# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TopCustomer do
  @moduledoc """
  TopCustomer
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `email` - The email address of the customer. This must be unique within the organization. Nullable.
  * `id` - The ID of the customer. Format: uuid4.
  * `name` - The name of the customer. Nullable.
  * `net_revenue` - The net revenue from this customer in the period, in cents, with refunded amounts subtracted.
  * `order_count` - The number of paid orders in the period.
  """
  @type t :: %__MODULE__{}

  defstruct [:avatar_url, :email, :id, :name, :net_revenue, :order_count]

  @schema_name "TopCustomer"
  def schema_name, do: @schema_name
end
