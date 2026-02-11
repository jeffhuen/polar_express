# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerStateChanged do
  @moduledoc """
  Webhook event for `customer.state_changed`.

  Sent when a customer state has changed.

  It's triggered when:

  * Customer is created, updated or deleted.
  * A subscription is created or updated.
  * A benefit is granted or revoked.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "customer.state_changed"
  def lookup_type, do: "customer.state_changed"
end
