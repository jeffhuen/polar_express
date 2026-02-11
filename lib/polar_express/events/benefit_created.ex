# File generated from our OpenAPI spec
defmodule PolarExpress.Events.BenefitCreated do
  @moduledoc """
  Webhook event for `benefit.created`.

  Sent when a new benefit is created.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "benefit.created"
  def lookup_type, do: "benefit.created"
end
