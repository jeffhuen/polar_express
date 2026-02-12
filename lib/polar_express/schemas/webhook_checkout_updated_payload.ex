# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookCheckoutUpdatedPayload do
  @moduledoc """
  WebhookCheckoutUpdatedPayload

  Sent when a checkout is updated.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Checkout.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookCheckoutUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Checkout
    }
  end

  def __date_fields__, do: [:timestamp]
end
