# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionChargePreview do
  @moduledoc """
  SubscriptionChargePreview

  Preview of the next charge for a subscription.
  """

  @typedoc """
  * `applied_balance_amount` - Wallet balance applied to this charge in cents: negative when the customer's account credit reduces the amount due, positive when the charge clears outstanding debt, zero otherwise.
  * `base_amount` - Base subscription amount in cents (sum of product prices)
  * `discount_amount` - Discount amount in cents
  * `due_amount` - Amount actually due in cents: total_amount plus the applied wallet balance, floored at zero. This is the figure charged today.
  * `metered_amount` - Total metered usage charges in cents (sum of all meter charges)
  * `net_amount` - Net amount in cents before taxes
  * `proration_amount` - Net pending proration adjustments in cents from mid-period changes (seat or product changes), to be billed on the next invoice.
  * `prorations` - Itemized pending proration adjustments to be billed on the next invoice.
  * `subtotal_amount` - Subtotal amount in cents (base + metered + prorations, before discount and tax)
  * `tax_amount` - Tax amount in cents
  * `total_amount` - Total amount in cents (net + tax, before applying wallet balance)
  """
  @type t :: %__MODULE__{}

  defstruct [
    :applied_balance_amount,
    :base_amount,
    :discount_amount,
    :due_amount,
    :metered_amount,
    :net_amount,
    :proration_amount,
    :prorations,
    :subtotal_amount,
    :tax_amount,
    :total_amount
  ]

  @schema_name "SubscriptionChargePreview"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "prorations" => PolarExpress.Schemas.SubscriptionChargePreviewProration
    }
  end
end
