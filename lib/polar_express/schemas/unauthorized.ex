# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Unauthorized do
  @moduledoc """
  Unauthorized
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "Unauthorized"
  def schema_name, do: @schema_name
end
