# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanStepNotActionable do
  @moduledoc """
  PanStepNotActionable
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PanStepNotActionable"
  def schema_name, do: @schema_name
end
