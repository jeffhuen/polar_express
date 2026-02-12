# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCheckoutExpiredPayload do
  @moduledoc """
  WebhookCheckoutExpiredPayload

  Sent when a checkout expires.

  This event fires when a checkout reaches its expiration time without being completed.
  Developers can use this to send reminder emails or track checkout abandonment.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Checkout.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookCheckoutExpiredPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Checkout
    }
  end

  def __date_fields__, do: [:timestamp]
end
