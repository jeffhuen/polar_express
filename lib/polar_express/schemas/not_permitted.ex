# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.NotPermitted do
  @moduledoc """
  NotPermitted
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "NotPermitted"
  def schema_name, do: @schema_name
end
