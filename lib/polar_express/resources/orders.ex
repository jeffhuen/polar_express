# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Orders do
  @moduledoc """
  Orders

  Orders API operations.
  """

  @typedoc """
  * `applied_balance_amount` - Customer's balance amount applied to this invoice. Can increase the total amount paid, if the customer has a negative balance, or decrease it, if the customer has a positive balance.Amount in cents.
  * `billing_address`
  * `billing_name` - The name of the customer that should appear on the invoice.
  * `billing_reason`
  * `checkout_id`
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency`
  * `custom_field_data` - Key-value object storing custom field values.
  * `customer`
  * `customer_id` - Format: uuid4.
  * `description` - A summary description of the order.
  * `discount`
  * `discount_amount` - Discount amount in cents.
  * `discount_id`
  * `due_amount` - Amount in cents that is due for this order.
  * `id` - The ID of the object. Format: uuid4.
  * `invoice_number` - The invoice number associated with this order.
  * `is_invoice_generated` - Whether an invoice has been generated for this order.
  * `items` - Line items composing the order.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `net_amount` - Amount in cents, after discounts but before taxes.
  * `paid` - Whether the order has been paid for.
  * `platform_fee_amount` - Platform fee amount in cents.
  * `platform_fee_currency` - Currency of the platform fee.
  * `product`
  * `product_id`
  * `refunded_amount` - Amount refunded in cents.
  * `refunded_tax_amount` - Sales tax refunded in cents.
  * `seats` - Number of seats purchased (for seat-based one-time orders).
  * `status`
  * `subscription`
  * `subscription_id`
  * `subtotal_amount` - Amount in cents, before discounts and taxes.
  * `tax_amount` - Sales tax amount in cents.
  * `total_amount` - Amount in cents, after discounts and taxes.
  * `user_id` - Format: uuid4. **Deprecated.**
  """
  @type t :: %__MODULE__{
          applied_balance_amount: integer() | nil,
          billing_address: map() | nil,
          billing_name: map() | nil,
          billing_reason: map() | nil,
          checkout_id: map() | nil,
          created_at: String.t() | nil,
          currency: String.t() | nil,
          custom_field_data: map() | nil,
          customer: map() | nil,
          customer_id: String.t() | nil,
          description: String.t() | nil,
          discount: map() | nil,
          discount_amount: integer() | nil,
          discount_id: map() | nil,
          due_amount: integer() | nil,
          id: String.t() | nil,
          invoice_number: String.t() | nil,
          is_invoice_generated: boolean() | nil,
          items: [map()] | nil,
          metadata: map() | nil,
          modified_at: map() | nil,
          net_amount: integer() | nil,
          paid: boolean() | nil,
          platform_fee_amount: integer() | nil,
          platform_fee_currency: map() | nil,
          product: map() | nil,
          product_id: map() | nil,
          refunded_amount: integer() | nil,
          refunded_tax_amount: integer() | nil,
          seats: map() | nil,
          status: map() | nil,
          subscription: map() | nil,
          subscription_id: map() | nil,
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

  @object_name "orders"
  def object_name, do: @object_name
end
