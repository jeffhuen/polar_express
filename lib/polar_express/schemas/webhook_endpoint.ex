# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookEndpoint do
  @moduledoc """
  WebhookEndpoint

  A webhook endpoint.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `enabled` - Whether the webhook endpoint is enabled and will receive events.
  * `events` - The events that will trigger the webhook.
  * `format` - The format of the webhook payload.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - An optional name for the webhook endpoint to help organize and identify it. Nullable.
  * `organization_id` - The organization ID associated with the webhook endpoint. Format: uuid4.
  * `secret` - The secret used to sign the webhook events.
  * `url` - The URL where the webhook events will be sent.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :created_at,
    :enabled,
    :events,
    :format,
    :id,
    :modified_at,
    :name,
    :organization_id,
    :secret,
    :url
  ]

  @schema_name "WebhookEndpoint"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "events" => PolarExpress.Schemas.WebhookEventType,
      "format" => PolarExpress.Schemas.WebhookFormat
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
