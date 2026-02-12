# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCustomerSeatClaimedPayload do
  @moduledoc """
  WebhookCustomerSeatClaimedPayload

  Sent when a customer seat is claimed.

  This event is triggered when a customer accepts the seat invitation and claims their access.
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.CustomerSeat.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookCustomerSeatClaimedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.CustomerSeat
    }
  end

  def __date_fields__, do: [:timestamp]
end
