# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerPortal.OrdersListOrdersParams do
  @moduledoc "Parameters for orders list orders."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `page` - Page number, defaults to 1.
  * `product_billing_type` - Filter by product billing type. `recurring` will filter data corresponding to subscriptions creations or renewals. `one_time` will filter data corresponding to one-time purchases.
  * `product_id` - Filter by product ID.
  * `query` - Search by product or organization name.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `subscription_id` - Filter by subscription ID.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          page: integer() | nil,
          product_billing_type: map() | nil,
          product_id: map() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil,
          subscription_id: map() | nil
        }

  defstruct [
    :limit,
    :page,
    :product_billing_type,
    :product_id,
    :query,
    :sorting,
    :subscription_id
  ]
end
