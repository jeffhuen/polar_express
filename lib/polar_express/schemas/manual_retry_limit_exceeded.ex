# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ManualRetryLimitExceeded do
  @moduledoc """
  ManualRetryLimitExceeded
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "ManualRetryLimitExceeded"
  def schema_name, do: @schema_name
end
