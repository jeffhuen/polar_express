# File generated from our OpenAPI spec
defmodule PolarExpress.Events.BenefitGrantUpdated do
  @moduledoc """
  Webhook event for `benefit_grant.updated`.

  Sent when a benefit grant is updated.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "benefit_grant.updated"
  def lookup_type, do: "benefit_grant.updated"
end
