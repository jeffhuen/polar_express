# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCustomerSeatAssignedPayload do
  @moduledoc """
  WebhookCustomerSeatAssignedPayload

  Sent when a new customer seat is assigned.

  This event is triggered when a seat is assigned to a customer by the organization.
  The customer will receive an invitation email to claim the seat.
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

  @schema_name "WebhookCustomerSeatAssignedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.CustomerSeat
    }
  end

  def __date_fields__, do: [:timestamp]
end
