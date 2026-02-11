# File generated from our OpenAPI spec
defmodule PolarExpress.Events.BenefitGrantCycled do
  @moduledoc """
  Webhook event for `benefit_grant.cycled`.

  Sent when a benefit grant is cycled,
  meaning the related subscription has been renewed for another period.

  **Discord & Slack support:** Basic

  The `data` field contains a `PolarExpress.Schemas.BenefitGrantWebhook` struct.
  """

  @typedoc """
  * `type` - Always `"benefit_grant.cycled"`.
  * `data` - The event payload. See `PolarExpress.Schemas.BenefitGrantWebhook`.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: PolarExpress.Schemas.BenefitGrantWebhook.t(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]

  @doc "Returns the event type string."
  @spec event_type() :: String.t()
  def event_type, do: "benefit_grant.cycled"
end
