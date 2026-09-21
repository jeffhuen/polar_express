# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TOTPEnable do
  @moduledoc """
  TOTPEnable
  """

  @typedoc """
  * `code`
  """
  @type t :: %__MODULE__{}

  defstruct [:code]

  @schema_name "TOTPEnable"
  def schema_name, do: @schema_name
end
