# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitSlackSharedChannelCreateProperties do
  @moduledoc """
  BenefitSlackSharedChannelCreateProperties
  """

  @typedoc """
  * `archive_on_revoke`
  * `channel_name_template` - Max length: 80.
  * `private`
  * `slack_integration_id` - Polar Slack integration to use for this benefit. Format: uuid4.
  * `team_invitees`
  * `welcome_message` - Nullable.
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

  @schema_name "BenefitSlackSharedChannelCreateProperties"
  def schema_name, do: @schema_name
end
