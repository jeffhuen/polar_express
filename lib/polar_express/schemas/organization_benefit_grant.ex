# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationBenefitGrant do
  @moduledoc """
  OrganizationBenefitGrant
  """

  @typedoc """
  * `benefit_description`
  * `channel_name` - Nullable.
  * `error_message` - Message of the last provisioning error, if any. Nullable.
  * `id`
  * `invite_url` - Slack Connect invite URL. Not always available: Slack omits it for some email invites. Nullable.
  * `invited_email` - Email of the Slack workspace admin the invite was sent to. Nullable.
  * `is_connected` - Whether the invite was accepted by the customer's workspace.
  * `is_granted` - Whether the channel is provisioned and the invite sent.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :benefit_description,
    :channel_name,
    :error_message,
    :id,
    :invite_url,
    :invited_email,
    :is_connected,
    :is_granted
  ]

  @schema_name "OrganizationBenefitGrant"
  def schema_name, do: @schema_name
end
