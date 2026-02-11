# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookDelivery do
  @moduledoc """
  WebhookDelivery

  A webhook delivery for a webhook event.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `http_code` - The HTTP code returned by the URL. `null` if the endpoint was unreachable. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `response` - The response body returned by the URL, or the error message if the endpoint was unreachable. Nullable.
  * `succeeded` - Whether the delivery was successful.
  * `webhook_event` - The webhook event sent by this delivery.
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          http_code: integer() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          response: String.t() | nil,
          succeeded: boolean() | nil,
          webhook_event: PolarExpress.Schemas.WebhookEvent.t() | nil
        }

  defstruct [:created_at, :http_code, :id, :modified_at, :response, :succeeded, :webhook_event]

  @schema_name "WebhookDelivery"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "webhook_event" => PolarExpress.Schemas.WebhookEvent
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
