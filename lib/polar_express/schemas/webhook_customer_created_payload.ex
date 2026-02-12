# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCustomerCreatedPayload do
  @moduledoc """
  WebhookCustomerCreatedPayload

  Sent when a new customer is created.

  A customer can be created:

  * After a successful checkout.
  * Programmatically via the API.

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

  @schema_name "WebhookCustomerCreatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Customer
    }
  end

  def __date_fields__, do: [:timestamp]
end
