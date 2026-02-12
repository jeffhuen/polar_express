# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountFixedOnceForeverDurationCreate do
  @moduledoc """
  DiscountFixedOnceForeverDurationCreate

  Schema to create a fixed amount discount that is applied once or forever.
  """

  @typedoc """
  * `amount` - Fixed amount to discount from the invoice total.
  * `code` - Code customers can use to apply the discount during checkout. Must be between 3 and 256 characters long and contain only alphanumeric characters.If not provided, the discount can only be applied via the API. Nullable.
  * `currency` - The currency. Currently, only `usd` is supported.
  * `duration`
  * `ends_at` - Optional timestamp after which the discount is no longer redeemable. Nullable.
  * `max_redemptions` - Optional maximum number of times the discount can be redeemed. Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `name` - Name of the discount. Will be displayed to the customer when the discount is applied.
  * `organization_id` - The ID of the organization owning the discount. **Required unless you use an organization token.** Nullable.
  * `products` - Nullable.
  * `starts_at` - Optional timestamp after which the discount is redeemable. Nullable.
  * `type` - Type of the discount.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          code: String.t() | nil,
          currency: String.t() | nil,
          duration: PolarExpress.Schemas.DiscountDuration.t() | nil,
          ends_at: DateTime.t() | nil,
          max_redemptions: integer() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          products: [String.t()] | nil,
          starts_at: DateTime.t() | nil,
          type: PolarExpress.Schemas.DiscountType.t() | nil
        }

  defstruct [
    :amount,
    :code,
    :currency,
    :duration,
    :ends_at,
    :max_redemptions,
    :metadata,
    :name,
    :organization_id,
    :products,
    :starts_at,
    :type
  ]

  @schema_name "DiscountFixedOnceForeverDurationCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "duration" => PolarExpress.Schemas.DiscountDuration,
      "type" => PolarExpress.Schemas.DiscountType
    }
  end

  def __date_fields__, do: [:ends_at, :starts_at]
end
