# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalOAuthAccount do
  @moduledoc """
  CustomerPortalOAuthAccount
  """

  @typedoc """
  * `account_id`
  * `account_username` - Nullable.
  """
  @type t :: %__MODULE__{
          account_id: String.t() | nil,
          account_username: String.t() | nil
        }

  defstruct [:account_id, :account_username]

  @schema_name "CustomerPortalOAuthAccount"
  def schema_name, do: @schema_name
end
