# File generated from our OpenAPI spec
defmodule PolarExpress.Events.DiscountDeleted do
  @moduledoc """
  Webhook event for `discount.deleted`.

  Sent when a discount is deleted.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Discount` struct.
  """

  @typedoc """
  * `type` - Always `"discount.deleted"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Discount`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Discount.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "discount.deleted"
end
