# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCustomerDeletedPayload do
  @moduledoc """
  WebhookCustomerDeletedPayload

  Sent when a customer is deleted.

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

  @schema_name "WebhookCustomerDeletedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Customer
    }
  end

  def __date_fields__, do: [:timestamp]
end
