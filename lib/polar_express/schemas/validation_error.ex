# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ValidationError do
  @moduledoc """
  ValidationError
  """

  @typedoc """
  * `ctx`
  * `input`
  * `loc`
  * `msg`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:ctx, :input, :loc, :msg, :type]

  @schema_name "ValidationError"
  def schema_name, do: @schema_name
end
