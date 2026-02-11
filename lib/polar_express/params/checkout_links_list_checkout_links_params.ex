# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CheckoutLinksListCheckoutLinksParams do
  @moduledoc "Parameters for checkout links list checkout links."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `product_id` - Filter by product ID.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          product_id: map() | nil,
          sorting: [map()] | nil
        }

  defstruct [:limit, :organization_id, :page, :product_id, :sorting]
end
