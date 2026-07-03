# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookOrderRefundedPayload do
  @moduledoc """
  WebhookOrderRefundedPayload

  Sent when an order is fully or partially refunded.

  **Discord & Slack support:** Full
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookOrderRefundedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Order
    }
  end

  def __date_fields__, do: [:timestamp]
end
