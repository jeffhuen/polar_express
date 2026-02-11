# File generated from our OpenAPI spec
defmodule PolarExpress.Params.BenefitGrantsListBenefitGrantsParams do
  @moduledoc "Parameters for benefit grants list benefit grants."

  @typedoc """
  * `customer_id` - Filter by customer ID.
  * `external_customer_id` - Filter by customer external ID.
  * `is_granted` - Filter by granted status. If `true`, only granted benefits will be returned. If `false`, only revoked benefits will be returned.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          customer_id: map() | nil,
          external_customer_id: map() | nil,
          is_granted: boolean() | nil,
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          sorting: [map()] | nil
        }

  defstruct [
    :customer_id,
    :external_customer_id,
    :is_granted,
    :limit,
    :organization_id,
    :page,
    :sorting
  ]
end
