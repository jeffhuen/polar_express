# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookDiscountUpdatedPayload do
  @moduledoc """
  WebhookDiscountUpdatedPayload

  Sent when a discount is updated.

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

  @schema_name "WebhookDiscountUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Discount
    }
  end

  def __date_fields__, do: [:timestamp]
end
