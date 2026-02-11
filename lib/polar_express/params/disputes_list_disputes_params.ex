# File generated from our OpenAPI spec
defmodule PolarExpress.Params.DisputesListDisputesParams do
  @moduledoc "Parameters for disputes list disputes."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `order_id` - Filter by order ID.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `status` - Filter by dispute status.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          order_id: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          sorting: [map()] | nil,
          status: map() | nil
        }

  defstruct [:limit, :order_id, :organization_id, :page, :sorting, :status]
end
