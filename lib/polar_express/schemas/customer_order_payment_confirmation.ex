# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrderPaymentConfirmation do
  @moduledoc """
  CustomerOrderPaymentConfirmation

  Response after confirming a retry payment.
  """

  @typedoc """
  * `client_secret` - Client secret for handling additional actions. Nullable.
  * `error` - Error message if confirmation failed. Nullable.
  * `status` - Payment status after confirmation.
  """
  @type t :: %__MODULE__{
          client_secret: String.t() | nil,
          error: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:client_secret, :error, :status]

  @schema_name "CustomerOrderPaymentConfirmation"
  def schema_name, do: @schema_name
end
