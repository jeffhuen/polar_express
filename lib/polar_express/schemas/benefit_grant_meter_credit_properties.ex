# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantMeterCreditProperties do
  @moduledoc """
  BenefitGrantMeterCreditProperties
  """

  @typedoc """
  * `last_credited_at`
  * `last_credited_meter_id`
  * `last_credited_units`
  """
  @type t :: %__MODULE__{
          last_credited_at: String.t() | nil,
          last_credited_meter_id: String.t() | nil,
          last_credited_units: integer() | nil
        }

  defstruct [:last_credited_at, :last_credited_meter_id, :last_credited_units]

  @schema_name "BenefitGrantMeterCreditProperties"
  def schema_name, do: @schema_name
end
