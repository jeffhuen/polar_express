# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MeterCreditedMetadata do
  @moduledoc """
  MeterCreditedMetadata
  """

  @typedoc """
  * `meter_id`
  * `rollover`
  * `units`
  """
  @type t :: %__MODULE__{
          meter_id: String.t() | nil,
          rollover: boolean() | nil,
          units: integer() | nil
        }

  defstruct [:meter_id, :rollover, :units]

  @schema_name "MeterCreditedMetadata"
  def schema_name, do: @schema_name
end
