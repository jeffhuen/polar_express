# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SourceAccountNotMigratable do
  @moduledoc """
  SourceAccountNotMigratable
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "SourceAccountNotMigratable"
  def schema_name, do: @schema_name
end
