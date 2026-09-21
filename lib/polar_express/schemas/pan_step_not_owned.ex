# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanStepNotOwned do
  @moduledoc """
  PanStepNotOwned
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PanStepNotOwned"
  def schema_name, do: @schema_name
end
