# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookProductCreatedPayload do
  @moduledoc """
  WebhookProductCreatedPayload

  Sent when a new product is created.

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

  @schema_name "WebhookProductCreatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Product
    }
  end

  def __date_fields__, do: [:timestamp]
end
