# File generated from our OpenAPI spec
defmodule PolarExpress.Events.MemberDeleted do
  @moduledoc """
  Webhook event for `member.deleted`.

  Sent when a member is deleted.

  This event is triggered when a member is removed from a customer.
  Any active seats assigned to the member will be automatically revoked.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "member.deleted"
  def lookup_type, do: "member.deleted"
end
