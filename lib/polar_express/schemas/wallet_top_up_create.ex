# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WalletTopUpCreate do
  @moduledoc """
  WalletTopUpCreate

  Request schema to top-up a wallet.
  """

  @typedoc """
  * `amount` - The amount to top-up the wallet by, in cents.
  * `currency` - The currency. Currently, only `usd` is supported. It should match the wallet's currency.
  """
  @type t :: %__MODULE__{}

  defstruct [:amount, :currency]

  @schema_name "WalletTopUpCreate"
  def schema_name, do: @schema_name
end
