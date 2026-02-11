# File generated from our OpenAPI spec
defmodule PolarExpress.Params.BenefitsListBenefitsParams do
  @moduledoc "Parameters for benefits list benefits."

  @typedoc """
  * `exclude_id` - Exclude benefits with these IDs.
  * `id` - Filter by benefit IDs.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `metadata` - Filter by metadata key-value pairs. It uses the `deepObject` style, e.g. `?metadata[key]=value`.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  * `query` - Filter by description.
  * `sorting` - Sorting criterion. Several criteria can be used simultaneously and will be applied in order. Add a minus sign `-` before the criteria name to sort by descending order.
  * `type` - Filter by benefit type.
  """
  @type t :: %__MODULE__{
          exclude_id: map() | nil,
          id: map() | nil,
          limit: integer() | nil,
          metadata: map() | nil,
          organization_id: map() | nil,
          page: integer() | nil,
          query: String.t() | nil,
          sorting: [map()] | nil,
          type: map() | nil
        }

  defstruct [
    :exclude_id,
    :id,
    :limit,
    :metadata,
    :organization_id,
    :page,
    :query,
    :sorting,
    :type
  ]
end
