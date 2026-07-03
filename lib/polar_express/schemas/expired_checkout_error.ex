# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ExpiredCheckoutError do
  @moduledoc """
  ExpiredCheckoutError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "ExpiredCheckoutError"
  def schema_name, do: @schema_name
end
