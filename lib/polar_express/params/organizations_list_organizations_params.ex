# File generated from our OpenAPI spec
defmodule PolarExpress.Params.OrganizationsListOrganizationsParams do
  @moduledoc "Parameters for organizations list organizations."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `page` - Page number, defaults to 1.
  * `slug` - Filter by slug.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          page: integer() | nil,
          slug: String.t() | nil,
          sorting: [map()] | nil
        }

  defstruct [:limit, :page, :slug, :sorting]
end
