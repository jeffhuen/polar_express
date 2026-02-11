# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CheckoutCreated do
  @moduledoc """
  Webhook event for `checkout.created`.

  Sent when a new checkout is created.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Checkout` struct.
  """

  @typedoc """
  * `type` - Always `"checkout.created"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Checkout`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Checkout.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "checkout.created"
end
