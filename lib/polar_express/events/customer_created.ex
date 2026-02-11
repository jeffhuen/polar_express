# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerCreated do
  @moduledoc """
  Webhook event for `customer.created`.

  Sent when a new customer is created.

  A customer can be created:

  * After a successful checkout.
  * Programmatically via the API.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Customer` struct.
  """

  @typedoc """
  * `type` - Always `"customer.created"`.
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
  def event_type, do: "customer.created"
end
