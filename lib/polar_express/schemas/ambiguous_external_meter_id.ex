# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AmbiguousExternalMeterID do
  @moduledoc """
  AmbiguousExternalMeterID
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "AmbiguousExternalMeterID"
  def schema_name, do: @schema_name
end
