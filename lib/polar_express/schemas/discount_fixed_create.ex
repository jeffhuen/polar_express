# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountFixedCreate do
  @moduledoc """
  DiscountFixedCreate

  Schema to create a fixed amount discount.
  """

  @typedoc """
  * `amount` - Nullable. **Deprecated.**
  * `amounts` - Nullable.
  * `code` - Code customers can use to apply the discount during checkout. Must be between 3 and 256 characters long and contain only alphanumeric characters.If not provided, the discount can only be applied via the API. Nullable.
  * `currency` - Nullable. **Deprecated.**
  * `duration` - For subscriptions, determines if the discount should be applied once on the first invoice, forever, or for a certain number of months determined by `duration_in_months`.
  * `duration_in_months` - Number of months the discount should be applied.

  Required when `duration` is `repeating`. Must be omitted otherwise.

  For this to work on yearly pricing, you should multiply this by 12.
  For example, to apply the discount for 2 years, set this to 24. Nullable.
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
  * `type`
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          amounts: %{String.t() => integer()} | nil,
          code: String.t() | nil,
          currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil,
          duration: PolarExpress.Schemas.DiscountDuration.t() | nil,
          duration_in_months: integer() | nil,
          ends_at: DateTime.t() | nil,
          max_redemptions: integer() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          products: [String.t()] | nil,
          starts_at: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :amount,
    :amounts,
    :code,
    :currency,
    :duration,
    :duration_in_months,
    :ends_at,
    :max_redemptions,
    :metadata,
    :name,
    :organization_id,
    :products,
    :starts_at,
    :type
  ]

  @schema_name "DiscountFixedCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "currency" => PolarExpress.Schemas.PresentmentCurrency,
      "duration" => PolarExpress.Schemas.DiscountDuration
    }
  end

  def __date_fields__, do: [:ends_at, :starts_at]
end
