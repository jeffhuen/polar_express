# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookEndpointCreate do
  @moduledoc """
  WebhookEndpointCreate

  Schema to create a webhook endpoint.
  """

  @typedoc """
  * `events` - The events that will trigger the webhook.
  * `format` - The format of the webhook payload.
  * `organization_id` - The organization ID associated with the webhook endpoint. **Required unless you use an organization token.** Nullable.
  * `secret` - Nullable. **Deprecated.**
  * `url` - The URL where the webhook events will be sent. Format: uri. Max length: 2083.
  """
  @type t :: %__MODULE__{
          events: [PolarExpress.Schemas.WebhookEventType.t()] | nil,
          format: PolarExpress.Schemas.WebhookFormat.t() | nil,
          organization_id: String.t() | nil,
          secret: String.t() | nil,
          url: String.t() | nil
        }

  defstruct [:events, :format, :organization_id, :secret, :url]

  @schema_name "WebhookEndpointCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "events" => PolarExpress.Schemas.WebhookEventType,
      "format" => PolarExpress.Schemas.WebhookFormat
    }
  end
end
