# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Payments do
  @moduledoc """
  Payments

  Payments API operations.
  """

  @typedoc """
  * `amount` - The payment amount in cents.
  * `checkout_id` - The ID of the checkout session associated with this payment.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - The payment currency. Currently, only `usd` is supported.
  * `decline_message` - Human-reasable error message, if the payment was declined.
  * `decline_reason` - Error code, if the payment was declined.
  * `id` - The ID of the object. Format: uuid4.
  * `method` - The payment method used.
  * `method_metadata` - Additional metadata for the card payment method.
  * `modified_at` - Last modification timestamp of the object.
  * `order_id` - The ID of the order associated with this payment.
  * `organization_id` - The ID of the organization that owns the payment. Format: uuid4.
  * `processor` - The payment processor.
  * `processor_metadata` - Additional metadata from the payment processor for internal use.
  * `status` - The payment status.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          checkout_id: map() | nil,
          created_at: String.t() | nil,
          currency: String.t() | nil,
          decline_message: map() | nil,
          decline_reason: map() | nil,
          id: String.t() | nil,
          method: String.t() | nil,
          method_metadata: map() | nil,
          modified_at: map() | nil,
          order_id: map() | nil,
          organization_id: String.t() | nil,
          processor: map() | nil,
          processor_metadata: map() | nil,
          status: map() | nil
        }

  defstruct [
    :amount,
    :checkout_id,
    :created_at,
    :currency,
    :decline_message,
    :decline_reason,
    :id,
    :method,
    :method_metadata,
    :modified_at,
    :order_id,
    :organization_id,
    :processor,
    :processor_metadata,
    :status
  ]

  @object_name "payments"
  def object_name, do: @object_name
end
