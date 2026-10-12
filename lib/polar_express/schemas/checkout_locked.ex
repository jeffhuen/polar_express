# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutLocked do
  @moduledoc """
  CheckoutLocked
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "CheckoutLocked"
  def schema_name, do: @schema_name
end
