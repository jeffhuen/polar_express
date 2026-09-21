# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSessionCodeInvalidOrExpired do
  @moduledoc """
  CustomerSessionCodeInvalidOrExpired
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "CustomerSessionCodeInvalidOrExpired"
  def schema_name, do: @schema_name
end
