# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCustomerStateChangedPayload do
  @moduledoc """
  WebhookCustomerStateChangedPayload

  Sent when a customer state has changed.

  It's triggered when:

  * Customer is created, updated or deleted.
  * A subscription is created or updated.
  * A benefit is granted or revoked.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.CustomerState.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookCustomerStateChangedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.CustomerState
    }
  end

  def __date_fields__, do: [:timestamp]
end
