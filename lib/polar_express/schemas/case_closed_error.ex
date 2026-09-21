# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CaseClosedError do
  @moduledoc """
  CaseClosedError
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "CaseClosedError"
  def schema_name, do: @schema_name
end
