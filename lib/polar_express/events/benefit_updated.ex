# File generated from our OpenAPI spec
defmodule PolarExpress.Events.BenefitUpdated do
  @moduledoc """
  Webhook event for `benefit.updated`.

  Sent when a benefit is updated.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "benefit.updated"
  def lookup_type, do: "benefit.updated"
end
