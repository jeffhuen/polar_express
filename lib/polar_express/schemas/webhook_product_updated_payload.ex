# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookProductUpdatedPayload do
  @moduledoc """
  WebhookProductUpdatedPayload

  Sent when a product is updated.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Product.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookProductUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Product
    }
  end

  def __date_fields__, do: [:timestamp]
end
