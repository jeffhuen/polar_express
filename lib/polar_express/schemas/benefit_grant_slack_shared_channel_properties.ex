# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantSlackSharedChannelProperties do
  @moduledoc """
  BenefitGrantSlackSharedChannelProperties
  """

  @typedoc """
  * `channel_id`
  * `channel_name`
  * `connected_team_id`
  * `invite_id`
  * `invite_url`
  * `invited_email`
  """
  @type t :: %__MODULE__{
          channel_id: String.t() | nil,
          channel_name: String.t() | nil,
          connected_team_id: String.t() | nil,
          invite_id: String.t() | nil,
          invite_url: String.t() | nil,
          invited_email: String.t() | nil
        }

  defstruct [
    :channel_id,
    :channel_name,
    :connected_team_id,
    :invite_id,
    :invite_url,
    :invited_email
  ]

  @schema_name "BenefitGrantSlackSharedChannelProperties"
  def schema_name, do: @schema_name
end
