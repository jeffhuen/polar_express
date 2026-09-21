# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AuthenticationSessionStart do
  @moduledoc """
  AuthenticationSessionStart
  """

  @typedoc """
  * `return_to` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:return_to]

  @schema_name "AuthenticationSessionStart"
  def schema_name, do: @schema_name
end
