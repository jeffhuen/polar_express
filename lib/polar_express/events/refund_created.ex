# File generated from our OpenAPI spec
defmodule PolarExpress.Events.RefundCreated do
  @moduledoc """
  Webhook event for `refund.created`.

  Sent when a refund is created regardless of status.

  **Discord & Slack support:** Full
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "refund.created"
  def lookup_type, do: "refund.created"
end
