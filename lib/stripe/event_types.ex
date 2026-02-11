# File generated from our OpenAPI spec
defmodule PolarExpress.EventTypes do
  @moduledoc false

  @doc "Maps event type strings to the schema ref of the event's data object."
  def event_type_to_data_ref do
    %{
      "benefit.created" => nil,
      "benefit.updated" => nil,
      "benefit_grant.created" => nil,
      "benefit_grant.cycled" => nil,
      "benefit_grant.revoked" => nil,
      "benefit_grant.updated" => nil,
      "checkout.created" => nil,
      "checkout.expired" => nil,
      "checkout.updated" => nil,
      "customer.created" => nil,
      "customer.deleted" => nil,
      "customer.state_changed" => nil,
      "customer.updated" => nil,
      "customer_seat.assigned" => nil,
      "customer_seat.claimed" => nil,
      "customer_seat.revoked" => nil,
      "member.created" => nil,
      "member.deleted" => nil,
      "member.updated" => nil,
      "order.created" => nil,
      "order.paid" => nil,
      "order.refunded" => nil,
      "order.updated" => nil,
      "organization.updated" => nil,
      "product.created" => nil,
      "product.updated" => nil,
      "refund.created" => nil,
      "refund.updated" => nil,
      "subscription.active" => nil,
      "subscription.canceled" => nil,
      "subscription.created" => nil,
      "subscription.past_due" => nil,
      "subscription.revoked" => nil,
      "subscription.uncanceled" => nil,
      "subscription.updated" => nil
    }
  end

  @doc "Maps thin event type strings to their per-event typed module."
  def event_type_to_module do
    %{}
  end
end
