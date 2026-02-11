# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerPortal.SubscriptionsListSubscriptionsParams do
  @moduledoc "Parameters for subscriptions list subscriptions."

  @typedoc """
  * `active` - Filter by active or cancelled subscription.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `page` - Page number, defaults to 1.
  * `product_id` - Filter by product ID.
  * `query` - Search by product or organization name.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          active: boolean() | nil,
          limit: integer() | nil,
          page: integer() | nil,
          product_id: map() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil
        }

  defstruct [:active, :limit, :page, :product_id, :query, :sorting]
end
