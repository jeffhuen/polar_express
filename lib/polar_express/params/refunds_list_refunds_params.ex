# File generated from our OpenAPI spec
defmodule PolarExpress.Params.RefundsListRefundsParams do
  @moduledoc "Parameters for refunds list refunds."

  @typedoc """
  * `customer_id` - Filter by customer ID.
  * `external_customer_id` - Filter by customer external ID.
  * `id` - Filter by refund ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `order_id` - Filter by order ID.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `subscription_id` - Filter by subscription ID.
  * `succeeded` - Filter by `succeeded`.
  """
  @type t :: %__MODULE__{
          customer_id: map() | nil,
          external_customer_id: map() | nil,
          id: map() | nil,
          limit: integer() | nil,
          order_id: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          sorting: [map()] | nil,
          subscription_id: map() | nil,
          succeeded: boolean() | nil
        }

  defstruct [
    :customer_id,
    :external_customer_id,
    :id,
    :limit,
    :order_id,
    :organization_id,
    :page,
    :sorting,
    :subscription_id,
    :succeeded
  ]
end
