# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountUpdate do
  @moduledoc """
  DiscountUpdate

  Schema to update a discount.
  """

  @typedoc """
  * `amount` - Nullable.
  * `basis_points` - Nullable.
  * `code` - Code customers can use to apply the discount during checkout. Must be between 3 and 256 characters long and contain only alphanumeric characters.If not provided, the discount can only be applied via the API. Nullable.
  * `currency` - Nullable.
  * `duration` - Nullable.
  * `duration_in_months` - Nullable.
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
  * `name` - Nullable.
  * `products` - Nullable.
  * `starts_at` - Optional timestamp after which the discount is redeemable. Nullable.
  * `type` - Nullable.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          basis_points: integer() | nil,
          code: String.t() | nil,
          currency: String.t() | nil,
          duration: PolarExpress.Schemas.DiscountDuration.t() | nil,
          duration_in_months: integer() | nil,
          ends_at: DateTime.t() | nil,
          max_redemptions: integer() | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          products: [String.t()] | nil,
          starts_at: DateTime.t() | nil,
          type: PolarExpress.Schemas.DiscountType.t() | nil
        }

  defstruct [
    :amount,
    :basis_points,
    :code,
    :currency,
    :duration,
    :duration_in_months,
    :ends_at,
    :max_redemptions,
    :metadata,
    :name,
    :products,
    :starts_at,
    :type
  ]

  @schema_name "DiscountUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "duration" => PolarExpress.Schemas.DiscountDuration,
      "type" => PolarExpress.Schemas.DiscountType
    }
  end

  def __date_fields__, do: [:ends_at, :starts_at]
end
