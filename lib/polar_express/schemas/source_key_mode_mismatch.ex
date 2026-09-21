# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SourceKeyModeMismatch do
  @moduledoc """
  SourceKeyModeMismatch
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "SourceKeyModeMismatch"
  def schema_name, do: @schema_name
end
