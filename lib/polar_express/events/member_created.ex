# File generated from our OpenAPI spec
defmodule PolarExpress.Events.MemberCreated do
  @moduledoc """
  Webhook event for `member.created`.

  Sent when a new member is created.

  A member represents an individual within a customer (team).
  This event is triggered when a member is added to a customer,
  either programmatically via the API or when an owner is automatically
  created for a new customer.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Member` struct.
  """

  @typedoc """
  * `type` - Always `"member.created"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Member`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Member.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "member.created"
end
