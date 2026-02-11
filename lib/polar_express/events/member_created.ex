# File generated from our OpenAPI spec
defmodule PolarExpress.Events.MemberCreated do
  @moduledoc """
  Webhook event for `member.created`.

  Sent when a new member is created.

  A member represents an individual within a customer (team).
  This event is triggered when a member is added to a customer,
  either programmatically via the API or when an owner is automatically
  created for a new customer.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "member.created"
  def lookup_type, do: "member.created"
end
