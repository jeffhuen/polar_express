# File generated from our OpenAPI spec
defmodule PolarExpress.Params.OrdersListOrdersParams do
  @moduledoc "Parameters for orders list orders."

  @typedoc """
  * `checkout_id` - Filter by checkout ID.
  * `customer_id` - Filter by customer ID.
  * `discount_id` - Filter by discount ID.
  * `external_customer_id` - Filter by customer external ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `metadata` - Filter by metadata key-value pairs. It uses the `deepObject` style, e.g. `?metadata[key]=value`.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `product_billing_type` - Filter by product billing type. `recurring` will filter data corresponding to subscriptions creations or renewals. `one_time` will filter data corresponding to one-time purchases.
  * `product_id` - Filter by product ID.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          checkout_id: map() | nil,
          customer_id: map() | nil,
          discount_id: map() | nil,
          external_customer_id: map() | nil,
          limit: integer() | nil,
          metadata: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          product_billing_type: map() | nil,
          product_id: map() | nil,
          sorting: [map()] | nil
        }

  defstruct [
    :checkout_id,
    :customer_id,
    :discount_id,
    :external_customer_id,
    :limit,
    :metadata,
    :organization_id,
    :page,
    :product_billing_type,
    :product_id,
    :sorting
  ]
end
