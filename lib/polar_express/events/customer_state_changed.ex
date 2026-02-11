# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerStateChanged do
  @moduledoc """
  Webhook event for `customer.state_changed`.

  Sent when a customer state has changed.

  It's triggered when:

  * Customer is created, updated or deleted.
  * A subscription is created or updated.
  * A benefit is granted or revoked.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.CustomerState` struct.
  """

  @typedoc """
  * `type` - Always `"customer.state_changed"`.
  * `data` - The event payload. See `PolarExpress.Schemas.CustomerState`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.CustomerState.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "customer.state_changed"
end
