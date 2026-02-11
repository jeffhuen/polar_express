# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerPortal.BenefitGrantsListBenefitGrantsParams do
  @moduledoc "Parameters for benefit grants list benefit grants."

  @typedoc """
  * `benefit_id` - Filter by benefit ID.
  * `checkout_id` - Filter by checkout ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `member_id` - Filter by member ID.
  * `order_id` - Filter by order ID.
  * `page` - Page number, defaults to 1.
  * `query` - Filter by benefit description.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `subscription_id` - Filter by subscription ID.
  * `type` - Filter by benefit type.
  """
  @type t :: %__MODULE__{
          benefit_id: map() | nil,
          checkout_id: map() | nil,
          limit: integer() | nil,
          member_id: map() | nil,
          order_id: map() | nil,
          page: integer() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil,
          subscription_id: map() | nil,
          type: map() | nil
        }

  defstruct [
    :benefit_id,
    :checkout_id,
    :limit,
    :member_id,
    :order_id,
    :page,
    :query,
    :sorting,
    :subscription_id,
    :type
  ]
end
