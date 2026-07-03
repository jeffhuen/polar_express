# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountFixedRepeatDuration do
  @moduledoc """
  DiscountFixedRepeatDuration

  Schema for a fixed amount discount that is applied on every invoice
  for a certain number of months.
  """

  @typedoc """
  * `amount` - **Deprecated.**
  * `amounts` - Map of currency to fixed amount to discount from the total.
  * `code` - Code customers can use to apply the discount during checkout. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - **Deprecated.**
  * `duration`
  * `duration_in_months`
  * `ends_at` - Timestamp after which the discount is no longer redeemable. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `max_redemptions` - Maximum number of times the discount can be redeemed. Nullable.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - Name of the discount. Will be displayed to the customer when the discount is applied.
  * `organization_id` - The organization ID. Format: uuid4.
  * `products`
  * `redemptions_count` - Number of times the discount has been redeemed.
  * `starts_at` - Timestamp after which the discount is redeemable. Nullable.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :amount,
    :amounts,
    :code,
    :created_at,
    :currency,
    :duration,
    :duration_in_months,
    :ends_at,
    :id,
    :max_redemptions,
    :metadata,
    :modified_at,
    :name,
    :organization_id,
    :products,
    :redemptions_count,
    :starts_at,
    :type
  ]

  @schema_name "DiscountFixedRepeatDuration"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "duration" => PolarExpress.Schemas.DiscountDuration,
      "metadata" => PolarExpress.Schemas.MetadataOutputType,
      "products" => PolarExpress.Schemas.DiscountProduct,
      "type" => PolarExpress.Schemas.DiscountType
    }
  end

  def __date_fields__, do: [:created_at, :ends_at, :modified_at, :starts_at]
end
