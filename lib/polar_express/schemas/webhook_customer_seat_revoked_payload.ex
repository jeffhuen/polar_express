# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCustomerSeatRevokedPayload do
  @moduledoc """
  WebhookCustomerSeatRevokedPayload

  Sent when a customer seat is revoked.

  This event is triggered when access to a seat is revoked, either manually by the organization or automatically when a subscription is canceled.
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

  @schema_name "WebhookCustomerSeatRevokedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.CustomerSeat
    }
  end

  def __date_fields__, do: [:timestamp]
end
