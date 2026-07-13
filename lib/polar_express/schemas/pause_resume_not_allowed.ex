# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PauseResumeNotAllowed do
  @moduledoc """
  PauseResumeNotAllowed
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PauseResumeNotAllowed"
  def schema_name, do: @schema_name
end
