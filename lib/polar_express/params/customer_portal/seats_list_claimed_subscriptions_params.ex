# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerPortal.SeatsListClaimedSubscriptionsParams do
  @moduledoc "Parameters for seats list claimed subscriptions."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `page` - Page number, defaults to 1.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          page: integer() | nil
        }

  defstruct [:limit, :page]
end
