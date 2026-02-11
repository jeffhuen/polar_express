# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DiscountPercentageOnceForeverDuration do
  @moduledoc """
  DiscountPercentageOnceForeverDuration

  Schema for a percentage discount that is applied once or forever.
  """

  @typedoc """
  * `basis_points` - Discount percentage in basis points. A basis point is 1/100th of a percent. For example, 1000 basis points equals a 10% discount.
  * `code` - Code customers can use to apply the discount during checkout. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `duration`
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
  @type t :: %__MODULE__{
          basis_points: integer() | nil,
          code: String.t() | nil,
          created_at: DateTime.t() | nil,
          duration: PolarExpress.Schemas.DiscountDuration.t() | nil,
          ends_at: DateTime.t() | nil,
          id: String.t() | nil,
          max_redemptions: integer() | nil,
          metadata: map() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          products: [PolarExpress.Schemas.DiscountProduct.t()] | nil,
          redemptions_count: integer() | nil,
          starts_at: DateTime.t() | nil,
          type: PolarExpress.Schemas.DiscountType.t() | nil
        }

  defstruct [
    :basis_points,
    :code,
    :created_at,
    :duration,
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

  @schema_name "DiscountPercentageOnceForeverDuration"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "duration" => PolarExpress.Schemas.DiscountDuration,
      "products" => PolarExpress.Schemas.DiscountProduct,
      "type" => PolarExpress.Schemas.DiscountType
    }
  end

  def __date_fields__, do: [:created_at, :ends_at, :modified_at, :starts_at]
end
