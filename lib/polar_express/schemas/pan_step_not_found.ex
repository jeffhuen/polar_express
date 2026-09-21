# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanStepNotFound do
  @moduledoc """
  PanStepNotFound
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PanStepNotFound"
  def schema_name, do: @schema_name
end
