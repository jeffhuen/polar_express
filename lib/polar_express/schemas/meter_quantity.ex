# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MeterQuantity do
  @moduledoc """
  MeterQuantity
  """

  @typedoc """
  * `quantity` - The quantity for the current period.
  * `timestamp` - The timestamp for the current period. Format: date-time.
  """
  @type t :: %__MODULE__{}

  defstruct [:quantity, :timestamp]

  @schema_name "MeterQuantity"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:timestamp]
end
