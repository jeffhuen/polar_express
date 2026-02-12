# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookOrderUpdatedPayload do
  @moduledoc """
  WebhookOrderUpdatedPayload

  Sent when an order is updated.

  An order is updated when:

  * Its status changes, e.g. from `pending` to `paid`.
  * It's refunded, partially or fully.

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

  @schema_name "WebhookOrderUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Order
    }
  end

  def __date_fields__, do: [:timestamp]
end
