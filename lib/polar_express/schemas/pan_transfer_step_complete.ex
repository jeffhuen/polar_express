# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanTransferStepComplete do
  @moduledoc """
  PanTransferStepComplete
  """

  @typedoc """
  * `inputs` - Values the step collects. Which keys it accepts depends on the step; unknown keys are rejected.
  """
  @type t :: %__MODULE__{}

  defstruct [:inputs]

  @schema_name "PanTransferStepComplete"
  def schema_name, do: @schema_name
end
