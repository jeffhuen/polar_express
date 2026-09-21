# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.InactiveSubscription do
  @moduledoc """
  InactiveSubscription
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "InactiveSubscription"
  def schema_name, do: @schema_name
end
