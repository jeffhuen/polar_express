# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookOrderPaidPayload do
  @moduledoc """
  WebhookOrderPaidPayload

  Sent when an order is paid.

  When you receive this event, the order is fully processed and payment has been received.

  **Discord & Slack support:** Full
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Order.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookOrderPaidPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Order
    }
  end

  def __date_fields__, do: [:timestamp]
end
