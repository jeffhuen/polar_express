# File generated from our OpenAPI spec
defmodule PolarExpress.Params.SubscriptionsListSubscriptionsParams do
  @moduledoc "Parameters for subscriptions list subscriptions."

  @typedoc """
  * `active` - Filter by active or inactive subscription.
  * `cancel_at_period_end` - Filter by subscriptions that are set to cancel at period end.
  * `customer_id` - Filter by customer ID.
  * `discount_id` - Filter by discount ID.
  * `external_customer_id` - Filter by customer external ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `metadata` - Filter by metadata key-value pairs. It uses the `deepObject` style, e.g. `?metadata[key]=value`.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `product_id` - Filter by product ID.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          active: boolean() | nil,
          cancel_at_period_end: boolean() | nil,
          customer_id: map() | nil,
          discount_id: map() | nil,
          external_customer_id: map() | nil,
          limit: integer() | nil,
          metadata: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          product_id: map() | nil,
          sorting: [map()] | nil
        }

  defstruct [
    :active,
    :cancel_at_period_end,
    :customer_id,
    :discount_id,
    :external_customer_id,
    :limit,
    :metadata,
    :organization_id,
    :page,
    :product_id,
    :sorting
  ]
end
