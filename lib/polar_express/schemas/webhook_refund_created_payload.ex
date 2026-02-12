# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookRefundCreatedPayload do
  @moduledoc """
  WebhookRefundCreatedPayload

  Sent when a refund is created regardless of status.

  **Discord & Slack support:** Full
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Refund.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookRefundCreatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Refund
    }
  end

  def __date_fields__, do: [:timestamp]
end
