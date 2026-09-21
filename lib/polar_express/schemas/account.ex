# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Account do
  @moduledoc """
  Account
  """

  @typedoc """
  * `billing_additional_info` - Nullable.
  * `billing_address` - Nullable.
  * `billing_name` - Nullable.
  * `billing_notes` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `credit_balance`
  * `currency`
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `payout_interval` - Minimum delay, in seconds, between two payout requests.
  * `payout_transaction_delay` - Delay after which a transaction becomes available for payout. Format: duration.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :billing_additional_info,
    :billing_address,
    :billing_name,
    :billing_notes,
    :created_at,
    :credit_balance,
    :currency,
    :id,
    :modified_at,
    :payout_interval,
    :payout_transaction_delay
  ]

  @schema_name "Account"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.Address
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
