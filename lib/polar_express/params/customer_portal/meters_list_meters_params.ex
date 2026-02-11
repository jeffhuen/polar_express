# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerPortal.MetersListMetersParams do
  @moduledoc "Parameters for meters list meters."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `meter_id` - Filter by meter ID.
  * `page` - Page number, defaults to 1.
  * `query` - Filter by meter name.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          meter_id: map() | nil,
          page: integer() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil
        }

  defstruct [:limit, :meter_id, :page, :query, :sorting]
end
