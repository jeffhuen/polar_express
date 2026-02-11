# File generated from our OpenAPI spec
defmodule PolarExpress.Events.BenefitGrantRevoked do
  @moduledoc """
  Webhook event for `benefit_grant.revoked`.

  Sent when a benefit grant is revoked.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "benefit_grant.revoked"
  def lookup_type, do: "benefit_grant.revoked"
end
