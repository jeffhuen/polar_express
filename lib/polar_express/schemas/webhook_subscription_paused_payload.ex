# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookSubscriptionPausedPayload do
  @moduledoc """
  WebhookSubscriptionPausedPayload

  Sent when a subscription is paused and the customer temporarily loses access.

  No order is created while paused. The subscription resumes either on its
  scheduled resume date or when resumed manually, starting a new billing period.

  **Discord & Slack support:** Full
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookSubscriptionPausedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Subscription
    }
  end

  def __date_fields__, do: [:timestamp]
end
