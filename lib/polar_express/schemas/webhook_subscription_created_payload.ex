# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookSubscriptionCreatedPayload do
  @moduledoc """
  WebhookSubscriptionCreatedPayload

  Sent when a new subscription is created.

  When this event occurs, the subscription `status` might not be `active` yet, as we can still have to wait for the first payment to be processed.

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

  @schema_name "WebhookSubscriptionCreatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Subscription
    }
  end

  def __date_fields__, do: [:timestamp]
end
