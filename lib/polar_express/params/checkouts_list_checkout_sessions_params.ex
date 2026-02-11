# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CheckoutsListCheckoutSessionsParams do
  @moduledoc "Parameters for checkouts list checkout sessions."

  @typedoc """
  * `customer_id` - Filter by customer ID.
  * `external_customer_id` - Filter by customer external ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `product_id` - Filter by product ID.
  * `query` - Filter by customer email.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `status` - Filter by checkout session status.
  """
  @type t :: %__MODULE__{
          customer_id: map() | nil,
          external_customer_id: map() | nil,
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          product_id: map() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil,
          status: map() | nil
        }

  defstruct [
    :customer_id,
    :external_customer_id,
    :limit,
    :organization_id,
    :page,
    :product_id,
    :query,
    :sorting,
    :status
  ]
end
