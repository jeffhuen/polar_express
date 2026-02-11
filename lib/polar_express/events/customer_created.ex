# File generated from our OpenAPI spec
defmodule PolarExpress.Events.CustomerCreated do
  @moduledoc """
  Webhook event for `customer.created`.

  Sent when a new customer is created.

  A customer can be created:

  * After a successful checkout.
  * Programmatically via the API.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "customer.created"
  def lookup_type, do: "customer.created"
end
