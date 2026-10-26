# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BadRequest do
  @moduledoc """
  BadRequest
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "BadRequest"
  def schema_name, do: @schema_name
end
