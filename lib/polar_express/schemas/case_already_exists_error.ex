# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CaseAlreadyExistsError do
  @moduledoc """
  CaseAlreadyExistsError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "CaseAlreadyExistsError"
  def schema_name, do: @schema_name
end
