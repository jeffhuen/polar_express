# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.GenericPayment do
  @moduledoc """
  GenericPayment

  Schema of a payment with a generic payment method.
  """

  @typedoc """
  * `amount` - The payment amount in cents.
  * `checkout_id` - The ID of the checkout session associated with this payment. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `currency` - The payment currency. Currently, only `usd` is supported.
  * `decline_message` - Human-reasable error message, if the payment was declined. Nullable.
  * `decline_reason` - Error code, if the payment was declined. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `method` - The payment method used.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `order_id` - The ID of the order associated with this payment. Nullable.
  * `organization_id` - The ID of the organization that owns the payment. Format: uuid4.
  * `processor` - The payment processor.
  * `processor_metadata` - Additional metadata from the payment processor for internal use.
  * `status` - The payment status.
  """
  @type t :: %__MODULE__{
          amount: integer() | nil,
          checkout_id: String.t() | nil,
          created_at: DateTime.t() | nil,
          currency: String.t() | nil,
          decline_message: String.t() | nil,
          decline_reason: String.t() | nil,
          id: String.t() | nil,
          method: String.t() | nil,
          modified_at: DateTime.t() | nil,
          order_id: String.t() | nil,
          organization_id: String.t() | nil,
          processor: PolarExpress.Schemas.PaymentProcessor.t() | nil,
          processor_metadata: map() | nil,
          status: PolarExpress.Schemas.PaymentStatus.t() | nil
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
    :modified_at,
    :order_id,
    :organization_id,
    :processor,
    :processor_metadata,
    :status
  ]

  @schema_name "GenericPayment"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "processor" => PolarExpress.Schemas.PaymentProcessor,
      "status" => PolarExpress.Schemas.PaymentStatus
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
