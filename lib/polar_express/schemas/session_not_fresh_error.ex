# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SessionNotFreshError do
  @moduledoc """
  SessionNotFreshError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "SessionNotFreshError"
  def schema_name, do: @schema_name
end
