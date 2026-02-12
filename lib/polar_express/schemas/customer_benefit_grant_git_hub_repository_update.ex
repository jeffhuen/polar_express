# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantGitHubRepositoryUpdate do
  @moduledoc """
  CustomerBenefitGrantGitHubRepositoryUpdate
  """

  @typedoc """
  * `benefit_type`
  * `properties`
  """
  @type t :: %__MODULE__{
          benefit_type: String.t() | nil,
          properties:
            PolarExpress.Schemas.CustomerBenefitGrantGitHubRepositoryPropertiesUpdate.t() | nil
        }

  defstruct [:benefit_type, :properties]

  @schema_name "CustomerBenefitGrantGitHubRepositoryUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "properties" => PolarExpress.Schemas.CustomerBenefitGrantGitHubRepositoryPropertiesUpdate
    }
  end
end
