# File generated from our OpenAPI spec
defmodule PolarExpress.Params.EventTypesListEventTypesParams do
  @moduledoc "Parameters for event types list event types."

  @typedoc """
  * `customer_id` - Filter by customer ID.
  * `external_customer_id` - Filter by external customer ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `parent_id` - Filter by specific parent event ID.
  * `query` - Query to filter event types by name or label.
  * `root_events` - When true, only return event types with root events (parent_id IS NULL).
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `source` - Filter by event source (system or user).
  """
  @type t :: %__MODULE__{
          customer_id: map() | nil,
          external_customer_id: map() | nil,
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          parent_id: String.t() | nil,
          query: String.t() | nil,
          root_events: boolean() | nil,
          sorting: [map()] | nil,
          source: map() | nil
        }

  defstruct [
    :customer_id,
    :external_customer_id,
    :limit,
    :organization_id,
    :page,
    :parent_id,
    :query,
    :root_events,
    :sorting,
    :source
  ]
end
