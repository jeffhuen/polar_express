# File generated from our OpenAPI spec
defmodule PolarExpress.Params.WebhooksListWebhookEndpointsParams do
  @moduledoc "Parameters for webhooks list webhook endpoints."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `organization_id` - Filter by organization ID.
  * `page` - Page number, defaults to 1.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          organization_id: map() | nil,
          page: integer() | nil
        }

  defstruct [:limit, :organization_id, :page]
end
