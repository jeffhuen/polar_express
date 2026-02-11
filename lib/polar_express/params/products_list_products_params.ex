# File generated from our OpenAPI spec
defmodule PolarExpress.Params.ProductsListProductsParams do
  @moduledoc "Parameters for products list products."

  @typedoc """
  * `benefit_id` - Filter products granting specific benefit.
  * `id` - Filter by product ID.
  * `is_archived` - Filter on archived products.
  * `is_recurring` - Filter on recurring products. If `true`, only subscriptions tiers are returned. If `false`, only one-time purchase products are returned.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `metadata` - Filter by metadata key-value pairs. It uses the `deepObject` style, e.g. `?metadata[key]=value`.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `query` - Filter by product name.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `visibility` - Filter by visibility.
  """
  @type t :: %__MODULE__{
          benefit_id: map() | nil,
          id: map() | nil,
          is_archived: boolean() | nil,
          is_recurring: boolean() | nil,
          limit: integer() | nil,
          metadata: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil,
          visibility: [map()] | nil
        }

  defstruct [
    :benefit_id,
    :id,
    :is_archived,
    :is_recurring,
    :limit,
    :metadata,
    :organization_id,
    :page,
    :query,
    :sorting,
    :visibility
  ]
end
