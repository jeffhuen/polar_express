# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Order do
  @moduledoc """
  Order
  """

  @typedoc """
  * `applied_balance_amount` - Customer's balance amount applied to this invoice. Can increase the total amount paid, if the customer has a negative balance, or decrease it, if the customer has a positive balance.Amount in cents.
  * `billing_address` - Nullable.
  * `billing_name` - The name of the customer that should appear on the invoice. Nullable.
  * `billing_reason`
  * `checkout_id` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency`
  * `custom_field_data` - Key-value object storing custom field values.
  * `customer`
  * `customer_id` - Format: uuid4.
  * `description` - A summary description of the order.
  * `discount` - Nullable.
  * `discount_amount` - Discount amount in cents.
  * `discount_id` - Nullable.
  * `due_amount` - Amount in cents that is due for this order.
  * `id` - The ID of the object. Format: uuid4.
  * `invoice_number` - The invoice number associated with this order.
  * `is_invoice_generated` - Whether an invoice has been generated for this order.
  * `items` - Line items composing the order.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `net_amount` - Amount in cents, after discounts but before taxes.
  * `paid` - Whether the order has been paid for.
  * `platform_fee_amount` - Platform fee amount in cents.
  * `platform_fee_currency` - Currency of the platform fee. Nullable.
  * `product` - Nullable.
  * `product_id` - Nullable.
  * `refunded_amount` - Amount refunded in cents.
  * `refunded_tax_amount` - Sales tax refunded in cents.
  * `seats` - Number of seats purchased (for seat-based one-time orders). Nullable.
  * `status`
  * `subscription` - Nullable.
  * `subscription_id` - Nullable.
  * `subtotal_amount` - Amount in cents, before discounts and taxes.
  * `tax_amount` - Sales tax amount in cents.
  * `total_amount` - Amount in cents, after discounts and taxes.
  * `user_id` - Format: uuid4. **Deprecated.**
  """
  @type t :: %__MODULE__{
          applied_balance_amount: integer() | nil,
          billing_address: PolarExpress.Schemas.Address.t() | nil,
          billing_name: String.t() | nil,
          billing_reason: PolarExpress.Schemas.OrderBillingReason.t() | nil,
          checkout_id: String.t() | nil,
          created_at: DateTime.t() | nil,
          currency: String.t() | nil,
          custom_field_data: map() | nil,
          customer: PolarExpress.Schemas.OrderCustomer.t() | nil,
          customer_id: String.t() | nil,
          description: String.t() | nil,
          discount:
            PolarExpress.Schemas.DiscountFixedOnceForeverDurationBase.t()
            | PolarExpress.Schemas.DiscountFixedRepeatDurationBase.t()
            | PolarExpress.Schemas.DiscountPercentageOnceForeverDurationBase.t()
            | PolarExpress.Schemas.DiscountPercentageRepeatDurationBase.t()
            | nil,
          discount_amount: integer() | nil,
          discount_id: String.t() | nil,
          due_amount: integer() | nil,
          id: String.t() | nil,
          invoice_number: String.t() | nil,
          is_invoice_generated: boolean() | nil,
          items: [PolarExpress.Schemas.OrderItemSchema.t()] | nil,
          metadata: map() | nil,
          modified_at: DateTime.t() | nil,
          net_amount: integer() | nil,
          paid: boolean() | nil,
          platform_fee_amount: integer() | nil,
          platform_fee_currency: String.t() | nil,
          product: PolarExpress.Schemas.OrderProduct.t() | nil,
          product_id: String.t() | nil,
          refunded_amount: integer() | nil,
          refunded_tax_amount: integer() | nil,
          seats: integer() | nil,
          status: PolarExpress.Schemas.OrderStatus.t() | nil,
          subscription: PolarExpress.Schemas.OrderSubscription.t() | nil,
          subscription_id: String.t() | nil,
          subtotal_amount: integer() | nil,
          tax_amount: integer() | nil,
          total_amount: integer() | nil,
          user_id: String.t() | nil
        }

  defstruct [
    :applied_balance_amount,
    :billing_address,
    :billing_name,
    :billing_reason,
    :checkout_id,
    :created_at,
    :currency,
    :custom_field_data,
    :customer,
    :customer_id,
    :description,
    :discount,
    :discount_amount,
    :discount_id,
    :due_amount,
    :id,
    :invoice_number,
    :is_invoice_generated,
    :items,
    :metadata,
    :modified_at,
    :net_amount,
    :paid,
    :platform_fee_amount,
    :platform_fee_currency,
    :product,
    :product_id,
    :refunded_amount,
    :refunded_tax_amount,
    :seats,
    :status,
    :subscription,
    :subscription_id,
    :subtotal_amount,
    :tax_amount,
    :total_amount,
    :user_id
  ]

  @schema_name "Order"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "billing_address" => PolarExpress.Schemas.Address,
      "billing_reason" => PolarExpress.Schemas.OrderBillingReason,
      "customer" => PolarExpress.Schemas.OrderCustomer,
      "discount" =>
        {:union, :variants,
         [
           PolarExpress.Schemas.DiscountFixedOnceForeverDurationBase,
           PolarExpress.Schemas.DiscountFixedRepeatDurationBase,
           PolarExpress.Schemas.DiscountPercentageOnceForeverDurationBase,
           PolarExpress.Schemas.DiscountPercentageRepeatDurationBase
         ]},
      "items" => PolarExpress.Schemas.OrderItemSchema,
      "product" => PolarExpress.Schemas.OrderProduct,
      "status" => PolarExpress.Schemas.OrderStatus,
      "subscription" => PolarExpress.Schemas.OrderSubscription
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
