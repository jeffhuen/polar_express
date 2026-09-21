# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationBenefitGrantUpdate do
  @moduledoc """
  OrganizationBenefitGrantUpdate
  """

  @typedoc """
  * `invited_email` - Email of an admin in the customer's Slack workspace who should receive the Slack Connect invite. Format: email.
  """
  @type t :: %__MODULE__{}

  defstruct [:invited_email]

  @schema_name "OrganizationBenefitGrantUpdate"
  def schema_name, do: @schema_name
end
