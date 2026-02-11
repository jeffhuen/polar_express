# File generated from our OpenAPI spec
defmodule PolarExpress.Params.OrganizationAccessTokensListParams do
  @moduledoc "Parameters for organization access tokens list."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          sorting: [map()] | nil
        }

  defstruct [:limit, :organization_id, :page, :sorting]
end
