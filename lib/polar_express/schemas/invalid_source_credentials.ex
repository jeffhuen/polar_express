# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.InvalidSourceCredentials do
  @moduledoc """
  InvalidSourceCredentials
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "InvalidSourceCredentials"
  def schema_name, do: @schema_name
end
