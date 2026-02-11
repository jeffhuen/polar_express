# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerMetersListCustomerMetersParams do
  @moduledoc "Parameters for customer meters list customer meters."

  @typedoc """
  * `customer_id` - Filter by customer ID.
  * `external_customer_id` - Filter by external customer ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `meter_id` - Filter by meter ID.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          customer_id: map() | nil,
          external_customer_id: map() | nil,
          limit: integer() | nil,
          meter_id: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          sorting: [map()] | nil
        }

  defstruct [
    :customer_id,
    :external_customer_id,
    :limit,
    :meter_id,
    :organization_id,
    :page,
    :sorting
  ]
end
