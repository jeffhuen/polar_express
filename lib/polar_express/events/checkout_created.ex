# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CheckoutCreated do
  @moduledoc """
  Webhook event for `checkout.created`.

  Sent when a new checkout is created.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "checkout.created"
  def lookup_type, do: "checkout.created"
end
