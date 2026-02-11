# File generated from our OpenAPI spec
defmodule PolarExpress.Params.WebhooksListWebhookDeliveriesParams do
  @moduledoc "Parameters for webhooks list webhook deliveries."

  @typedoc """
  * `end_timestamp` - Filter deliveries before this timestamp.
  * `endpoint_id` - Filter by webhook endpoint ID.
  * `event_type` - Filter by webhook event type.
  * `http_code_class` - Filter by HTTP response code class (2xx, 3xx, 4xx, 5xx).
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `page` - Page number, defaults to 1.
  * `query` - Query to filter webhook deliveries.
  * `start_timestamp` - Filter deliveries after this timestamp.
  * `succeeded` - Filter by delivery success status.
  """
  @type t :: %__MODULE__{
          end_timestamp: String.t() | nil,
          endpoint_id: map() | nil,
          event_type: map() | nil,
          http_code_class: String.t() | nil,
          limit: integer() | nil,
          page: integer() | nil,
          query: String.t() | nil,
          start_timestamp: String.t() | nil,
          succeeded: boolean() | nil
        }

  defstruct [
    :end_timestamp,
    :endpoint_id,
    :event_type,
    :http_code_class,
    :limit,
    :page,
    :query,
    :start_timestamp,
    :succeeded
  ]
end
