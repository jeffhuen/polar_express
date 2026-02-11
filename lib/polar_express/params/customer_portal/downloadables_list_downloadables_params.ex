# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerPortal.DownloadablesListDownloadablesParams do
  @moduledoc "Parameters for downloadables list downloadables."

  @typedoc """
  * `benefit_id` - Filter by benefit ID.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `page` - Page number, defaults to 1.
  """
  @type t :: %__MODULE__{
          benefit_id: map() | nil,
          limit: integer() | nil,
          page: integer() | nil
        }

  defstruct [:benefit_id, :limit, :page]
end
