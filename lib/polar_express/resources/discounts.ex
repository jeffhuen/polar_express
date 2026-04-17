# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Discounts do
  @moduledoc """
  Discounts

  Discounts API operations.
  """

  @typedoc """
  * `amount` - **Deprecated.**
  * `amounts` - Map of currency to fixed amount to discount from the total.
  * `basis_points` - Discount percentage in basis points. A basis point is 1/100th of a percent. For example, 1000 basis points equals a 10% discount.
  * `code` - Code customers can use to apply the discount during checkout.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - **Deprecated.**
  * `duration`
  * `duration_in_months`
  * `ends_at` - Timestamp after which the discount is no longer redeemable.
  * `id` - The ID of the object. Format: uuid4.
  * `max_redemptions` - Maximum number of times the discount can be redeemed.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `name` - Name of the discount. Will be displayed to the customer when the discount is applied.
  * `organization_id` - The organization ID. Format: uuid4.
  * `products`
  * `redemptions_count` - Number of times the discount has been redeemed.
  * `starts_at` - Timestamp after which the discount is redeemable.
  * `type`
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          amounts: term() | nil,
          basis_points: integer() | nil,
          code: term() | nil,
          created_at: String.t() | nil,
          currency: String.t() | nil,
          duration: map() | nil,
          duration_in_months: integer() | nil,
          ends_at: term() | nil,
          id: String.t() | nil,
          max_redemptions: term() | nil,
          metadata: map() | nil,
          modified_at: term() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          products: [map()] | nil,
          redemptions_count: integer() | nil,
          starts_at: term() | nil,
          type: map() | nil
        }

  defstruct [
    :amount,
    :amounts,
    :basis_points,
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

  @object_name "discounts"
  def object_name, do: @object_name
end
