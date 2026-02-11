# File generated from our OpenAPI spec
defmodule PolarExpress.Params.MembersListMembersParams do
  @moduledoc "Parameters for members list members."

  @typedoc """
  * `customer_id` - Filter by customer ID.
  * `external_customer_id` - Filter by customer external ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `page` - Page number, defaults to 1.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          customer_id: String.t() | nil,
          external_customer_id: String.t() | nil,
          limit: integer() | nil,
          page: integer() | nil,
          sorting: [map()] | nil
        }

  defstruct [:customer_id, :external_customer_id, :limit, :page, :sorting]
end
