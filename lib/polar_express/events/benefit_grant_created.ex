# File generated from our OpenAPI spec
defmodule PolarExpress.Events.BenefitGrantCreated do
  @moduledoc """
  Webhook event for `benefit_grant.created`.

  Sent when a new benefit grant is created.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "benefit_grant.created"
  def lookup_type, do: "benefit_grant.created"
end
