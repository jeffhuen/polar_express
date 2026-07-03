# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AlreadyCanceledSubscription do
  @moduledoc """
  AlreadyCanceledSubscription
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "AlreadyCanceledSubscription"
  def schema_name, do: @schema_name
end
