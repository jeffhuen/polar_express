# File generated from our OpenAPI spec
defmodule PolarExpress.Events.BenefitGrantCycled do
  @moduledoc """
  Webhook event for `benefit_grant.cycled`.

  Sent when a benefit grant is cycled,
  meaning the related subscription has been renewed for another period.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "benefit_grant.cycled"
  def lookup_type, do: "benefit_grant.cycled"
end
