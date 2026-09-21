# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.RotateNotPermitted do
  @moduledoc """
  RotateNotPermitted
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "RotateNotPermitted"
  def schema_name, do: @schema_name
end
