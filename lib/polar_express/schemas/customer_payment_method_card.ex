# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPaymentMethodCard do
  @moduledoc """
  CustomerPaymentMethodCard
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer_id` - Format: uuid4.
  * `id` - The ID of the object. Format: uuid4.
  * `is_default` - Whether this payment method is the customer's default payment method.
  * `method_metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `processor`
  * `type`
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          customer_id: String.t() | nil,
          id: String.t() | nil,
          is_default: boolean() | nil,
          method_metadata: PolarExpress.Schemas.PaymentMethodCardMetadata.t() | nil,
          modified_at: DateTime.t() | nil,
          processor: PolarExpress.Schemas.PaymentProcessor.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :created_at,
    :customer_id,
    :id,
    :is_default,
    :method_metadata,
    :modified_at,
    :processor,
    :type
  ]

  @schema_name "CustomerPaymentMethodCard"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "method_metadata" => PolarExpress.Schemas.PaymentMethodCardMetadata,
      "processor" => PolarExpress.Schemas.PaymentProcessor
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
