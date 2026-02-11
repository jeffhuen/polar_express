# File generated from our OpenAPI spec
defmodule PolarExpress.Events.MemberUpdated do
  @moduledoc """
  Webhook event for `member.updated`.

  Sent when a member is updated.

  This event is triggered when member details are updated,
  such as their name or role within the customer.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "member.updated"
  def lookup_type, do: "member.updated"
end
