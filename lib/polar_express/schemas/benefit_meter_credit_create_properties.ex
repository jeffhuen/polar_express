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
  @type t :: %__MODULE__{}

  defstruct [:meter_id, :rollover, :units]

  @schema_name "BenefitMeterCreditCreateProperties"
  def schema_name, do: @schema_name
end
