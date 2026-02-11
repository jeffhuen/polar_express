# File generated from our OpenAPI spec
defmodule PolarExpress.Params.PaymentsListPaymentsParams do
  @moduledoc "Parameters for payments list payments."

  @typedoc """
  * `checkout_id` - Filter by checkout ID.
  * `customer_email` - Filter by customer email.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `method` - Filter by payment method.
  * `order_id` - Filter by order ID.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `status` - Filter by payment status.
  """
  @type t :: %__MODULE__{
          checkout_id: map() | nil,
          customer_email: map() | nil,
          limit: integer() | nil,
          method: map() | nil,
          order_id: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          sorting: [map()] | nil,
          status: map() | nil
        }

  defstruct [
    :checkout_id,
    :customer_email,
    :limit,
    :method,
    :order_id,
    :organization_id,
    :page,
    :sorting,
    :status
  ]
end
