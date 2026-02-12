# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerBenefitGrantGitHubRepositoryPropertiesUpdate do
  @moduledoc """
  CustomerBenefitGrantGitHubRepositoryPropertiesUpdate
  """

  @typedoc """
  * `account_id` - Nullable.
  """
  @type t :: %__MODULE__{
          account_id: String.t() | nil
        }

  defstruct [:account_id]

  @schema_name "CustomerBenefitGrantGitHubRepositoryPropertiesUpdate"
  def schema_name, do: @schema_name
end
