# File generated from our OpenAPI spec
defmodule PolarExpress.Params.EventsListEventNamesParams do
  @moduledoc "Parameters for events list event names."

  @typedoc """
  * `customer_id` - Filter by customer ID.
  * `external_customer_id` - Filter by external customer ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `query` - Query to filter event names.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `source` - Filter by event source.
  """
  @type t :: %__MODULE__{
          customer_id: map() | nil,
          external_customer_id: map() | nil,
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil,
          source: map() | nil
        }

  defstruct [
    :customer_id,
    :external_customer_id,
    :limit,
    :organization_id,
    :page,
    :query,
    :sorting,
    :source
  ]
end
