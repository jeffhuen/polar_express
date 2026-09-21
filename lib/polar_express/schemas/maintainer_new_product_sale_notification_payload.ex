# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MaintainerNewProductSaleNotificationPayload do
  @moduledoc """
  MaintainerNewProductSaleNotificationPayload
  """

  @typedoc """
  * `billing_address_city` - Nullable.
  * `billing_address_country` - Nullable.
  * `billing_address_line1` - Nullable.
  * `billing_reason` - Nullable.
  * `currency`
  * `customer_email` - Nullable.
  * `customer_name`
  * `formatted_address_country` - Nullable.
  * `formatted_billing_reason` - Nullable.
  * `formatted_price_amount`
  * `order_date` - Nullable.
  * `order_id` - Nullable.
  * `order_url` - Nullable.
  * `organization_name`
  * `organization_slug` - Nullable.
  * `product_image_url` - Nullable.
  * `product_name`
  * `product_price_amount`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :billing_address_city,
    :billing_address_country,
    :billing_address_line1,
    :billing_reason,
    :currency,
    :customer_email,
    :customer_name,
    :formatted_address_country,
    :formatted_billing_reason,
    :formatted_price_amount,
    :order_date,
    :order_id,
    :order_url,
    :organization_name,
    :organization_slug,
    :product_image_url,
    :product_name,
    :product_price_amount
  ]

  @schema_name "MaintainerNewProductSaleNotificationPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_reason" => PolarExpress.Schemas.OrderBillingReasonInternal
    }
  end
end
