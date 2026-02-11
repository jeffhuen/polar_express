# File generated from our OpenAPI spec
defmodule PolarExpress.Events.OrganizationUpdated do
  @moduledoc """
  Webhook event for `organization.updated`.

  Sent when a organization is updated.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "organization.updated"
  def lookup_type, do: "organization.updated"
end
