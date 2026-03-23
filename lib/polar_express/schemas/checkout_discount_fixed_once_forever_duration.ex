# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutDiscountFixedOnceForeverDuration do
  @moduledoc """
  CheckoutDiscountFixedOnceForeverDuration

  Schema for a fixed amount discount that is applied once or forever.
  """

  @typedoc """
  * `amount` - **Deprecated.**
  * `amounts` - Map of currency to fixed amount to discount from the total.
  * `code` - Nullable.
  * `currency` - **Deprecated.**
  * `duration`
  * `id` - The ID of the object. Format: uuid4.
  * `name`
  * `type`
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          amounts: %{String.t() => integer()} | nil,
          code: String.t() | nil,
          currency: String.t() | nil,
          duration: PolarExpress.Schemas.DiscountDuration.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          type: PolarExpress.Schemas.DiscountType.t() | nil
        }

  defstruct [:amount, :amounts, :code, :currency, :duration, :id, :name, :type]

  @schema_name "CheckoutDiscountFixedOnceForeverDuration"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "duration" => PolarExpress.Schemas.DiscountDuration,
      "type" => PolarExpress.Schemas.DiscountType
    }
  end
end
