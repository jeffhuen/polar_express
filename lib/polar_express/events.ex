# File generated from our OpenAPI spec
defmodule PolarExpress.Events do
  @moduledoc "Known PolarExpress webhook event type constants."

  @event_types [
    "benefit.created",
    "benefit.updated",
    "benefit_grant.created",
    "benefit_grant.cycled",
    "benefit_grant.revoked",
    "benefit_grant.updated",
    "checkout.created",
    "checkout.expired",
    "checkout.updated",
    "customer.created",
    "customer.deleted",
    "customer.state_changed",
    "customer.updated",
    "customer_seat.assigned",
    "customer_seat.claimed",
    "customer_seat.revoked",
    "member.created",
    "member.deleted",
    "member.updated",
    "order.created",
    "order.paid",
    "order.refunded",
    "order.updated",
    "organization.updated",
    "product.created",
    "product.updated",
    "refund.created",
    "refund.updated",
    "subscription.active",
    "subscription.canceled",
    "subscription.created",
    "subscription.past_due",
    "subscription.revoked",
    "subscription.uncanceled",
    "subscription.updated"
  ]

  @doc "List of all known PolarExpress event types."
  @spec event_types() :: [String.t()]
  def event_types, do: @event_types

  @doc "Check if a string is a known event type."
  @spec valid_event_type?(String.t()) :: boolean()
  def valid_event_type?(type), do: type in @event_types
end
