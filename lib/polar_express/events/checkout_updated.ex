# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CheckoutUpdated do
  @moduledoc """
  Webhook event for `checkout.updated`.

  Sent when a checkout is updated.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "checkout.updated"
  def lookup_type, do: "checkout.updated"
end
