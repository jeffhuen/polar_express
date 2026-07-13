# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookSubscriptionResumedPayload do
  @moduledoc """
  WebhookSubscriptionResumedPayload

  Sent when a paused subscription resumes, restoring the customer's access.

  Resuming starts a new billing period and charges the customer immediately.

  **Discord & Slack support:** Full
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookSubscriptionResumedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Subscription
    }
  end

  def __date_fields__, do: [:timestamp]
end
