# File generated from our OpenAPI spec
defmodule PolarExpress.Events.BenefitUpdated do
  @moduledoc """
  Webhook event for `benefit.updated`.

  Sent when a benefit is updated.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Benefit` struct.
  """

  @typedoc """
  * `type` - Always `"benefit.updated"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Benefit`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Benefit.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "benefit.updated"
end
