# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.Wallets do
  @moduledoc """
  Wallets

  Wallets API operations.
  """

  @typedoc """
  * `balance` - The current balance of the wallet, in cents.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - The currency of the wallet.
  * `customer_id` - The ID of the customer that owns the wallet. Format: uuid4.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object.
  """
  @type t :: %__MODULE__{
          balance: integer() | nil,
          created_at: String.t() | nil,
          currency: String.t() | nil,
          customer_id: String.t() | nil,
          id: String.t() | nil,
          modified_at: map() | nil
        }

  defstruct [:balance, :created_at, :currency, :customer_id, :id, :modified_at]

  @object_name "wallets"
  def object_name, do: @object_name
end
