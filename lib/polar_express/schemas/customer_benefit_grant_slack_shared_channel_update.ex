# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantSlackSharedChannelUpdate do
  @moduledoc """
  CustomerBenefitGrantSlackSharedChannelUpdate
  """

  @typedoc """
  * `benefit_type`
  * `properties`
  """
  @type t :: %__MODULE__{
          benefit_type: String.t() | nil,
          properties:
            PolarExpress.Schemas.CustomerBenefitGrantSlackSharedChannelPropertiesUpdate.t() | nil
        }

  defstruct [:benefit_type, :properties]

  @schema_name "CustomerBenefitGrantSlackSharedChannelUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "properties" => PolarExpress.Schemas.CustomerBenefitGrantSlackSharedChannelPropertiesUpdate
    }
  end
end
