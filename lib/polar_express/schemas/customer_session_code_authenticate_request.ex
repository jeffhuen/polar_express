# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSessionCodeAuthenticateRequest do
  @moduledoc """
  CustomerSessionCodeAuthenticateRequest
  """

  @typedoc """
  * `code`
  """
  @type t :: %__MODULE__{}

  defstruct [:code]

  @schema_name "CustomerSessionCodeAuthenticateRequest"
  def schema_name, do: @schema_name
end
