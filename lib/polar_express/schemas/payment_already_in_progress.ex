# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PaymentAlreadyInProgress do
  @moduledoc """
  PaymentAlreadyInProgress
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

  @schema_name "PaymentAlreadyInProgress"
  def schema_name, do: @schema_name
end
