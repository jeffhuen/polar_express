# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookBenefitGrantCreatedPayload do
  @moduledoc """
  WebhookBenefitGrantCreatedPayload

  Sent when a new benefit grant is created.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookBenefitGrantCreatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.BenefitGrantWebhook
    }
  end

  def __date_fields__, do: [:timestamp]
end
