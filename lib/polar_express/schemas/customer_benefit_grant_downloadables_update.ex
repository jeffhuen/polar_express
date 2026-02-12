# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantDownloadablesUpdate do
  @moduledoc """
  CustomerBenefitGrantDownloadablesUpdate
  """

  @typedoc """
  * `benefit_type`
  """
  @type t :: %__MODULE__{
          benefit_type: String.t() | nil
        }

  defstruct [:benefit_type]

  @schema_name "CustomerBenefitGrantDownloadablesUpdate"
  def schema_name, do: @schema_name
end
