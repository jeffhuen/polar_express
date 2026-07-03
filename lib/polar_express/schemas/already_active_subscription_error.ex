# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AlreadyActiveSubscriptionError do
  @moduledoc """
  AlreadyActiveSubscriptionError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "AlreadyActiveSubscriptionError"
  def schema_name, do: @schema_name
end
