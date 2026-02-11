# File generated from our OpenAPI spec
defmodule PolarExpress.Events.RefundUpdated do
  @moduledoc """
  Webhook event for `refund.updated`.

  Sent when a refund is updated.

  **Discord & Slack support:** Full

  The `data` field contains a `PolarExpress.Schemas.Refund` struct.
  """

  @typedoc """
  * `type` - Always `"refund.updated"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Refund`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Refund.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "refund.updated"
end
