# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantFeatureFlagUpdate do
  @moduledoc """
  CustomerBenefitGrantFeatureFlagUpdate
  """

  @typedoc """
  * `benefit_type`
  """
  @type t :: %__MODULE__{}

  defstruct [:benefit_type]

  @schema_name "CustomerBenefitGrantFeatureFlagUpdate"
  def schema_name, do: @schema_name
end
