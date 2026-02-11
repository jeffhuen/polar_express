# File generated from our OpenAPI spec
defmodule PolarExpress.Params.EventsListEventsParams do
  @moduledoc "Parameters for events list events."

  @typedoc """
  * `customer_id` - Filter by customer ID.
  * `depth` - Fetch descendants up to this depth. When set: 0=root events only, 1=roots+children, etc. Max 5. When not set, returns all events.
  * `end_timestamp` - Filter events before this timestamp.
  * `external_customer_id` - Filter by external customer ID.
  * `filter` - Filter events following filter clauses. JSON string following the same schema a meter filter clause.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `metadata` - Filter by metadata key-value pairs. It uses the `deepObject` style, e.g. `?metadata[key]=value`.
  * `meter_id` - Filter by a meter filter clause.
  * `name` - Filter by event name.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `parent_id` - When combined with depth, use this event as the anchor instead of root events.
  * `query` - Query to filter events.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `source` - Filter by event source.
  * `start_timestamp` - Filter events after this timestamp.
  """
  @type t :: %__MODULE__{
          customer_id: map() | nil,
          depth: integer() | nil,
          end_timestamp: String.t() | nil,
          external_customer_id: map() | nil,
          filter: String.t() | nil,
          limit: integer() | nil,
          metadata: map() | nil,
          meter_id: String.t() | nil,
          name: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          parent_id: String.t() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil,
          source: map() | nil,
          start_timestamp: String.t() | nil
        }

  defstruct [
    :customer_id,
    :depth,
    :end_timestamp,
    :external_customer_id,
    :filter,
    :limit,
    :metadata,
    :meter_id,
    :name,
    :organization_id,
    :page,
    :parent_id,
    :query,
    :sorting,
    :source,
    :start_timestamp
  ]
end
