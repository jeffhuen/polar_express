# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrderConfirmPayment do
  @moduledoc """
  CustomerOrderConfirmPayment

  Schema to confirm a retry payment using either a saved payment method or a new confirmation token.
  """

  @typedoc """
  * `confirmation_token_id` - ID of the Stripe confirmation token for new payment methods. Nullable.
  * `payment_method_id` - ID of an existing saved payment method. Nullable.
  * `payment_processor` - Payment processor used.
  """
  @type t :: %__MODULE__{
          confirmation_token_id: String.t() | nil,
          payment_method_id: String.t() | nil,
          payment_processor: PolarExpress.Schemas.PaymentProcessor.t() | nil
        }

  defstruct [:confirmation_token_id, :payment_method_id, :payment_processor]

  @schema_name "CustomerOrderConfirmPayment"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "payment_processor" => PolarExpress.Schemas.PaymentProcessor
    }
  end
end
