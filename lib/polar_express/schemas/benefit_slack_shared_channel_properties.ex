# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitSlackSharedChannelProperties do
  @moduledoc """
  BenefitSlackSharedChannelProperties
  """

  @typedoc """
  * `archive_on_revoke` - Archive the channel when the benefit is revoked.
  * `channel_name_template` - Template for the channel name. Supports placeholders: {customer_name}, {customer_email_local}, and {metadata.} for any value stored in customer user metadata. Max length: 80.
  * `private` - Create the channel as private (recommended).
  * `slack_integration_id` - Polar Slack integration linked to this benefit. Format: uuid4.
  * `team_invitees` - Slack user IDs from the merchant workspace to invite to every channel created for this benefit.
  * `welcome_message` - Optional message posted to the channel right after creation. Nullable.
  """
  @type t :: %__MODULE__{
          archive_on_revoke: boolean() | nil,
          channel_name_template: String.t() | nil,
          private: boolean() | nil,
          slack_integration_id: String.t() | nil,
          team_invitees: [String.t()] | nil,
          welcome_message: String.t() | nil
        }

  defstruct [
    :archive_on_revoke,
    :channel_name_template,
    :private,
    :slack_integration_id,
    :team_invitees,
    :welcome_message
  ]

  @schema_name "BenefitSlackSharedChannelProperties"
  def schema_name, do: @schema_name
end
