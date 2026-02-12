# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantMeterCreditUpdate do
  @moduledoc """
  CustomerBenefitGrantMeterCreditUpdate
  """

  @typedoc """
  * `benefit_type`
  """
  @type t :: %__MODULE__{
          benefit_type: String.t() | nil
        }

  defstruct [:benefit_type]

  @schema_name "CustomerBenefitGrantMeterCreditUpdate"
  def schema_name, do: @schema_name
end
