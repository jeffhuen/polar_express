# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookSubscriptionCycledPayload do
  @moduledoc """
  WebhookSubscriptionCycledPayload

  Sent when a subscription enters a new billing period.

  The payload carries the new `current_period_start` and `current_period_end`.
  It fires when the period rolls over, before the renewal order exists and
  regardless of whether the renewal payment succeeds — listen to `order.paid`
  if you need the payment.

  A trial converting to a paid subscription starts a new period, so it fires
  there too. Read `status` to tell the two apart.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `api_version`
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:api_version, :data, :timestamp, :type]

  @schema_name "WebhookSubscriptionCycledPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Subscription
    }
  end

  def __date_fields__, do: [:timestamp]
end
