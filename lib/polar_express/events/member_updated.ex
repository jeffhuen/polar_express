# File generated from our OpenAPI spec
defmodule PolarExpress.Events.MemberUpdated do
  @moduledoc """
  Webhook event for `member.updated`.

  Sent when a member is updated.

  This event is triggered when member details are updated,
  such as their name or role within the customer.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Member` struct.
  """

  @typedoc """
  * `type` - Always `"member.updated"`.
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
  def event_type, do: "member.updated"
end
