# File generated from our OpenAPI spec
defmodule PolarExpress.Events.ProductCreated do
  @moduledoc """
  Webhook event for `product.created`.

  Sent when a new product is created.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Product` struct.
  """

  @typedoc """
  * `type` - Always `"product.created"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Product`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Product.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "product.created"
end
