# File generated from our OpenAPI spec
defmodule PolarExpress.Params.LicenseKeysListLicenseKeysParams do
  @moduledoc "Parameters for license keys list license keys."

  @typedoc """
  * `benefit_id` - Filter by benefit ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  """
  @type t :: %__MODULE__{
          benefit_id: map() | nil,
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil
        }

  defstruct [:benefit_id, :limit, :organization_id, :page]
end
