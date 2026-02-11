# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomersListCustomersParams do
  @moduledoc "Parameters for customers list customers."

  @typedoc """
  * `email` - Filter by exact email.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `metadata` - Filter by metadata key-value pairs. It uses the `deepObject` style, e.g. `?metadata[key]=value`.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `query` - Filter by name, email, or external ID.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          email: String.t() | nil,
          limit: integer() | nil,
          metadata: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil
        }

  defstruct [:email, :limit, :metadata, :organization_id, :page, :query, :sorting]
end
