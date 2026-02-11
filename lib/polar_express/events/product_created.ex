# File generated from our OpenAPI spec
defmodule PolarExpress.Events.ProductCreated do
  @moduledoc """
  Webhook event for `product.created`.

  Sent when a new product is created.

  **Discord & Slack support:** Basic
  """

  defstruct [:type, :data, :timestamp]

  def event_type, do: "product.created"
  def lookup_type, do: "product.created"
end
