# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerDeleted do
  @moduledoc """
  Webhook event for `customer.deleted`.

  Sent when a customer is deleted.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "customer.deleted"
  def lookup_type, do: "customer.deleted"
end
