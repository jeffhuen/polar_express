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
  * `organization_id` - The organization ID associated with the webhook endpoint. Format: uuid4.
  * `secret` - The secret used to sign the webhook events.
  * `url` - The URL where the webhook events will be sent. Format: uri. Max length: 2083.
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          enabled: boolean() | nil,
          events: [PolarExpress.Schemas.WebhookEventType.t()] | nil,
          format: PolarExpress.Schemas.WebhookFormat.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          organization_id: String.t() | nil,
          secret: String.t() | nil,
          url: String.t() | nil
        }

  defstruct [
    :created_at,
    :enabled,
    :events,
    :format,
    :id,
    :modified_at,
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
