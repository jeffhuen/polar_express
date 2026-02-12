# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentMethodInUseByActiveSubscription do
  @moduledoc """
  PaymentMethodInUseByActiveSubscription
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{
          detail: String.t() | nil,
          error: String.t() | nil
        }

  defstruct [:detail, :error]

  @schema_name "PaymentMethodInUseByActiveSubscription"
  def schema_name, do: @schema_name
end
