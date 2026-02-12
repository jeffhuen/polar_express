# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitMeterCreditCreateProperties do
  @moduledoc """
  BenefitMeterCreditCreateProperties

  Properties for creating a benefit of type `meter_unit`.
  """

  @typedoc """
  * `meter_id` - Format: uuid4.
  * `rollover`
  * `units`
  """
  @type t :: %__MODULE__{
          meter_id: String.t() | nil,
          rollover: boolean() | nil,
          units: integer() | nil
        }

  defstruct [:meter_id, :rollover, :units]

  @schema_name "BenefitMeterCreditCreateProperties"
  def schema_name, do: @schema_name
end
