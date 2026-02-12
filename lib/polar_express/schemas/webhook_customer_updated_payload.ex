# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCustomerUpdatedPayload do
  @moduledoc """
  WebhookCustomerUpdatedPayload

  Sent when a customer is updated.

  This event is fired when the customer details are updated.

  If you want to be notified when a customer subscription or benefit state changes, you should listen to the `customer_state_changed` event.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Customer.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookCustomerUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Customer
    }
  end

  def __date_fields__, do: [:timestamp]
end
