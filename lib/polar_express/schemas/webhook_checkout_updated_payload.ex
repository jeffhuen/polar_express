# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCheckoutUpdatedPayload do
  @moduledoc """
  WebhookCheckoutUpdatedPayload

  Sent when a checkout is updated.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `api_version`
  * `data`
  * `event_id` - The ID of the event. Use it to discard duplicate deliveries. Format: uuid.
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:api_version, :data, :event_id, :timestamp, :type]

  @schema_name "WebhookCheckoutUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Checkout
    }
  end

  def __date_fields__, do: [:timestamp]
end
