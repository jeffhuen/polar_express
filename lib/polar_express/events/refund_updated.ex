# File generated from our OpenAPI spec
defmodule PolarExpress.Events.RefundUpdated do
  @moduledoc """
  Webhook event for `refund.updated`.

  Sent when a refund is updated.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "refund.updated"
  def lookup_type, do: "refund.updated"
end
