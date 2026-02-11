# File generated from our OpenAPI spec
defmodule PolarExpress.Events.ProductUpdated do
  @moduledoc """
  Webhook event for `product.updated`.

  Sent when a product is updated.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "product.updated"
  def lookup_type, do: "product.updated"
end
