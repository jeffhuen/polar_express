# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomFieldsListCustomFieldsParams do
  @moduledoc "Parameters for custom fields list custom fields."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `query` - Filter by custom field name or slug.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `type` - Filter by custom field type.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil,
          type: map() | nil
        }

  defstruct [:limit, :organization_id, :page, :query, :sorting, :type]
end
