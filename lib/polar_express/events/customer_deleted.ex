# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerDeleted do
  @moduledoc """
  Webhook event for `customer.deleted`.

  Sent when a customer is deleted.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Customer` struct.
  """

  @typedoc """
  * `type` - Always `"customer.deleted"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Customer`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Customer.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "customer.deleted"
end
