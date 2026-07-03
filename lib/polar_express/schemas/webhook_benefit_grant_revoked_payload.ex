# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookBenefitGrantRevokedPayload do
  @moduledoc """
  WebhookBenefitGrantRevokedPayload

  Sent when a benefit grant is revoked.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookBenefitGrantRevokedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.BenefitGrantWebhook
    }
  end

  def __date_fields__, do: [:timestamp]
end
