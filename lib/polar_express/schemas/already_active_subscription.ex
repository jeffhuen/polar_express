# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AlreadyActiveSubscription do
  @moduledoc """
  AlreadyActiveSubscription
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "AlreadyActiveSubscription"
  def schema_name, do: @schema_name
end
