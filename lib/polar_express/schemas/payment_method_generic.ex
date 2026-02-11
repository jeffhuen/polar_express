# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentMethodGeneric do
  @moduledoc """
  PaymentMethodGeneric
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer_id` - Format: uuid4.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `processor`
  * `type`
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          customer_id: String.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          processor: PolarExpress.Schemas.PaymentProcessor.t() | nil,
          type: String.t() | nil
        }

  defstruct [:created_at, :customer_id, :id, :modified_at, :processor, :type]

  @schema_name "PaymentMethodGeneric"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "processor" => PolarExpress.Schemas.PaymentProcessor
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
