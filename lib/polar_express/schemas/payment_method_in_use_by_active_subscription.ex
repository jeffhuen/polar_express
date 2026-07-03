# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentMethodInUseByActiveSubscription do
  @moduledoc """
  PaymentMethodInUseByActiveSubscription
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PaymentMethodInUseByActiveSubscription"
  def schema_name, do: @schema_name
end
