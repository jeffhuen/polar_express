# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Wallet do
  @moduledoc """
  Wallet

  A wallet represents a customer's balance in your organization.

  They can top-up their wallet, and use the balance to pay for usage.
  """

  @typedoc """
  * `balance` - The current balance of the wallet, in cents.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - The currency of the wallet.
  * `customer_id` - The ID of the customer that owns the wallet. Format: uuid4.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:balance, :created_at, :currency, :customer_id, :id, :modified_at]

  @schema_name "Wallet"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
