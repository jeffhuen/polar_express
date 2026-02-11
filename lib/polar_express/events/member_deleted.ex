# File generated from our OpenAPI spec
defmodule PolarExpress.Events.MemberDeleted do
  @moduledoc """
  Webhook event for `member.deleted`.

  Sent when a member is deleted.

  This event is triggered when a member is removed from a customer.
  Any active seats assigned to the member will be automatically revoked.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Member` struct.
  """

  @typedoc """
  * `type` - Always `"member.deleted"`.
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
  def event_type, do: "member.deleted"
end
