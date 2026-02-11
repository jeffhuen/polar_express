# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MeterResetMetadata do
  @moduledoc """
  MeterResetMetadata
  """

  @typedoc """
  * `meter_id`
  """
  @type t :: %__MODULE__{
          meter_id: String.t() | nil
        }

  defstruct [:meter_id]

  @schema_name "MeterResetMetadata"
  def schema_name, do: @schema_name
end
