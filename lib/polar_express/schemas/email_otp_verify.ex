# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EmailOTPVerify do
  @moduledoc """
  EmailOTPVerify
  """

  @typedoc """
  * `code`
  """
  @type t :: %__MODULE__{}

  defstruct [:code]

  @schema_name "EmailOTPVerify"
  def schema_name, do: @schema_name
end
