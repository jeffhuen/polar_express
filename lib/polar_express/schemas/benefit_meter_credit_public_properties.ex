# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitMeterCreditPublicProperties do
  @moduledoc """
  BenefitMeterCreditPublicProperties

  Properties for a benefit of type `meter_credit`.
  """

  @typedoc """
  * `meter_id` - Format: uuid4.
  * `units`
  """
  @type t :: %__MODULE__{}

  defstruct [:meter_id, :units]

  @schema_name "BenefitMeterCreditPublicProperties"
  def schema_name, do: @schema_name
end
