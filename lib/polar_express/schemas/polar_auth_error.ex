# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PolarAuthError do
  @moduledoc """
  PolarAuthError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PolarAuthError"
  def schema_name, do: @schema_name
end
