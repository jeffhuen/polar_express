# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookSubscriptionUncanceledPayload do
  @moduledoc """
  WebhookSubscriptionUncanceledPayload

  Sent when a customer revokes a pending cancellation.

  When a customer cancels with "at period end", they retain access until the
  subscription would renew. During this time, they can change their mind and
  undo the cancellation. This event is triggered when they do so.

  **Discord & Slack support:** Full
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Subscription.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookSubscriptionUncanceledPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Subscription
    }
  end

  def __date_fields__, do: [:timestamp]
end
