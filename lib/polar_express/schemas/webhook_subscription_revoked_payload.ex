# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookSubscriptionRevokedPayload do
  @moduledoc """
  WebhookSubscriptionRevokedPayload

  Sent when a subscription is revoked and the user loses access immediately.
  Happens when the subscription is canceled or payment retries are exhausted (status becomes `unpaid`).

  For payment failures that can still be recovered, see `subscription.past_due`.

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

  @schema_name "WebhookSubscriptionRevokedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Subscription
    }
  end

  def __date_fields__, do: [:timestamp]
end
