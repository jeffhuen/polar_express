# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrganizationFeatureSettings do
  @moduledoc """
  CustomerOrganizationFeatureSettings

  Feature flags exposed to the customer portal.
  """

  @typedoc """
  * `checkout_localization_enabled` - Whether localization is enabled for this organization.
  """
  @type t :: %__MODULE__{}

  defstruct [:checkout_localization_enabled]

  @schema_name "CustomerOrganizationFeatureSettings"
  def schema_name, do: @schema_name
end
