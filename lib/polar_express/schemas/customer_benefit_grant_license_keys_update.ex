# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantLicenseKeysUpdate do
  @moduledoc """
  CustomerBenefitGrantLicenseKeysUpdate
  """

  @typedoc """
  * `benefit_type`
  """
  @type t :: %__MODULE__{
          benefit_type: String.t() | nil
        }

  defstruct [:benefit_type]

  @schema_name "CustomerBenefitGrantLicenseKeysUpdate"
  def schema_name, do: @schema_name
end
