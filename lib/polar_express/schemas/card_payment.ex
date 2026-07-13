# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CardPayment do
  @moduledoc """
  CardPayment

  Schema of a payment with a card payment method.
  """

  @typedoc """
  * `amount` - The payment amount in cents.
  * `checkout_id` - The ID of the checkout session associated with this payment. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - The payment currency. Currently, only `usd` is supported.
  * `decline_message` - Human-readable error message, if the payment was declined. Nullable.
  * `decline_reason` - Error code, if the payment was declined. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `method` - The payment method used.
  * `method_metadata` - Additional metadata for the card payment method.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `order_id` - The ID of the order associated with this payment. Nullable.
  * `organization_id` - The ID of the organization that owns the payment. Format: uuid4.
  * `processor` - The payment processor.
  * `processor_metadata` - Additional metadata from the payment processor for internal use.
  * `status` - The payment status.
  * `trigger` - What initiated this payment attempt, e.g. initial purchase, subscription renewal, or an automated dunning retry. Nullable.
  """
  @type t :: %__MODULE__{}

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
    :status,
    :trigger
  ]

  @schema_name "CardPayment"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "method_metadata" => PolarExpress.Schemas.CardPaymentMetadata,
      "processor" => PolarExpress.Schemas.PaymentProcessor,
      "status" => PolarExpress.Schemas.PaymentStatus,
      "trigger" => PolarExpress.Schemas.PaymentTrigger
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
