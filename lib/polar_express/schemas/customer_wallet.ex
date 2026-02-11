# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerWallet do
  @moduledoc """
  CustomerWallet

  A wallet represents your balance with an organization.

  You can top-up your wallet and use the balance to pay for usage.
  """

  @typedoc """
  * `balance` - The current balance of the wallet, in cents.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - The currency of the wallet.
  * `customer_id` - The ID of the customer that owns the wallet. Format: uuid4.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  """
  @type t :: %__MODULE__{
          balance: integer() | nil,
          created_at: DateTime.t() | nil,
          currency: String.t() | nil,
          customer_id: String.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil
        }

  defstruct [:balance, :created_at, :currency, :customer_id, :id, :modified_at]

  @schema_name "CustomerWallet"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
