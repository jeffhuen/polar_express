# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookEvent do
  @moduledoc """
  WebhookEvent

  A webhook event.

  An event represent something that happened in the system
  that should be sent to the webhook endpoint.

  It can be delivered multiple times until it's marked as succeeded,
  each one creating a new delivery.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `is_archived` - Whether this event is archived. Archived events can't be redelivered, and the payload is not accessible anymore.
  * `last_http_code` - Last HTTP code returned by the URL. `null` if no delviery has been attempted or if the endpoint was unreachable. Nullable.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `payload` - The payload of the webhook event. Nullable.
  * `skipped` - Whether this event was skipped because the webhook endpoint was disabled.
  * `succeeded` - Whether this event was successfully delivered. `null` if no delivery has been attempted. Nullable.
  * `type` - The type of the webhook event.
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          is_archived: boolean() | nil,
          last_http_code: integer() | nil,
          modified_at: DateTime.t() | nil,
          payload: String.t() | nil,
          skipped: boolean() | nil,
          succeeded: boolean() | nil,
          type: PolarExpress.Schemas.WebhookEventType.t() | nil
        }

  defstruct [
    :created_at,
    :id,
    :is_archived,
    :last_http_code,
    :modified_at,
    :payload,
    :skipped,
    :succeeded,
    :type
  ]

  @schema_name "WebhookEvent"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "type" => PolarExpress.Schemas.WebhookEventType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
