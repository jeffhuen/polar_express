# File generated from our OpenAPI spec
defmodule PolarExpress.Events.OrganizationUpdated do
  @moduledoc """
  Webhook event for `organization.updated`.

  Sent when a organization is updated.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.Organization` struct.
  """

  @typedoc """
  * `type` - Always `"organization.updated"`.
  * `data` - The event payload. See `PolarExpress.Schemas.Organization`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.Organization.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "organization.updated"
end
