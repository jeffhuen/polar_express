# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CheckoutExpired do
  @moduledoc """
  Webhook event for `checkout.expired`.

  Sent when a checkout expires.

  This event fires when a checkout reaches its expiration time without being completed.
  Developers can use this to send reminder emails or track checkout abandonment.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "checkout.expired"
  def lookup_type, do: "checkout.expired"
end
