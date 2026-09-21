# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookDiscountCreatedPayload do
  @moduledoc """
  WebhookDiscountCreatedPayload

  Sent when a new discount is created.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `api_version`
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:api_version, :data, :timestamp, :type]

  @schema_name "WebhookDiscountCreatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Discount
    }
  end

  def __date_fields__, do: [:timestamp]
end
