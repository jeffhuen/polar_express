# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerPortal.LicenseKeysListLicenseKeysParams do
  @moduledoc "Parameters for license keys list license keys."

  @typedoc """
  * `benefit_id` - Filter by a specific benefit
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `page` - Page number, defaults to 1.
  """
  @type t :: %__MODULE__{
          benefit_id: String.t() | nil,
          limit: integer() | nil,
          page: integer() | nil
        }

  defstruct [:benefit_id, :limit, :page]
end
