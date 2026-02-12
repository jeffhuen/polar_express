# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookEndpointUpdate do
  @moduledoc """
  WebhookEndpointUpdate

  Schema to update a webhook endpoint.
  """

  @typedoc """
  * `enabled` - Whether the webhook endpoint is enabled. Nullable.
  * `events` - Nullable.
  * `format` - Nullable.
  * `secret` - Nullable. **Deprecated.**
  * `url` - Nullable.
  """
  @type t :: %__MODULE__{
          enabled: boolean() | nil,
          events: [PolarExpress.Schemas.WebhookEventType.t()] | nil,
          format: PolarExpress.Schemas.WebhookFormat.t() | nil,
          secret: String.t() | nil,
          url: String.t() | nil
        }

  defstruct [:enabled, :events, :format, :secret, :url]

  @schema_name "WebhookEndpointUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "events" => PolarExpress.Schemas.WebhookEventType,
      "format" => PolarExpress.Schemas.WebhookFormat
    }
  end
end
