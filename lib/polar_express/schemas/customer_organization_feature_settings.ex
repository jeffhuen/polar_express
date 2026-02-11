# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrganizationFeatureSettings do
  @moduledoc """
  CustomerOrganizationFeatureSettings

  Feature flags exposed to the customer portal.
  """

  @typedoc """
  * `member_model_enabled` - Whether the member model is enabled for this organization.
  """
  @type t :: %__MODULE__{
          member_model_enabled: boolean() | nil
        }

  defstruct [:member_model_enabled]

  @schema_name "CustomerOrganizationFeatureSettings"
  def schema_name, do: @schema_name
end
