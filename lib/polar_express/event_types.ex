# File generated from our OpenAPI spec
defmodule PolarExpress.EventTypes do
  @moduledoc false

  @doc "Maps event type strings to their data schema module."
  def event_type_to_schema do
    %{
      "benefit.created" => PolarExpress.Schemas.Benefit,
      "benefit.updated" => PolarExpress.Schemas.Benefit,
      "benefit_grant.created" => PolarExpress.Schemas.BenefitGrantWebhook,
      "benefit_grant.cycled" => PolarExpress.Schemas.BenefitGrantWebhook,
      "benefit_grant.revoked" => PolarExpress.Schemas.BenefitGrantWebhook,
      "benefit_grant.updated" => PolarExpress.Schemas.BenefitGrantWebhook,
      "checkout.created" => PolarExpress.Schemas.Checkout,
      "checkout.expired" => PolarExpress.Schemas.Checkout,
      "checkout.updated" => PolarExpress.Schemas.Checkout,
      "customer.created" => PolarExpress.Schemas.Customer,
      "customer.deleted" => PolarExpress.Schemas.Customer,
      "customer.state_changed" => PolarExpress.Schemas.CustomerState,
      "customer.updated" => PolarExpress.Schemas.Customer,
      "customer_seat.assigned" => PolarExpress.Schemas.CustomerSeat,
      "customer_seat.claimed" => PolarExpress.Schemas.CustomerSeat,
      "customer_seat.revoked" => PolarExpress.Schemas.CustomerSeat,
      "member.created" => PolarExpress.Schemas.Member,
      "member.deleted" => PolarExpress.Schemas.Member,
      "member.updated" => PolarExpress.Schemas.Member,
      "order.created" => PolarExpress.Schemas.Order,
      "order.paid" => PolarExpress.Schemas.Order,
      "order.refunded" => PolarExpress.Schemas.Order,
      "order.updated" => PolarExpress.Schemas.Order,
      "organization.updated" => PolarExpress.Schemas.Organization,
      "product.created" => PolarExpress.Schemas.Product,
      "product.updated" => PolarExpress.Schemas.Product,
      "refund.created" => PolarExpress.Schemas.Refund,
      "refund.updated" => PolarExpress.Schemas.Refund,
      "subscription.active" => PolarExpress.Schemas.Subscription,
      "subscription.canceled" => PolarExpress.Schemas.Subscription,
      "subscription.created" => PolarExpress.Schemas.Subscription,
      "subscription.past_due" => PolarExpress.Schemas.Subscription,
      "subscription.revoked" => PolarExpress.Schemas.Subscription,
      "subscription.uncanceled" => PolarExpress.Schemas.Subscription,
      "subscription.updated" => PolarExpress.Schemas.Subscription
    }
  end

  @doc "Maps event type strings to their per-event typed module."
  def event_type_to_module do
    %{
      "benefit.created" => PolarExpress.Events.BenefitCreated,
      "benefit.updated" => PolarExpress.Events.BenefitUpdated,
      "benefit_grant.created" => PolarExpress.Events.BenefitGrantCreated,
      "benefit_grant.cycled" => PolarExpress.Events.BenefitGrantCycled,
      "benefit_grant.revoked" => PolarExpress.Events.BenefitGrantRevoked,
      "benefit_grant.updated" => PolarExpress.Events.BenefitGrantUpdated,
      "checkout.created" => PolarExpress.Events.CheckoutCreated,
      "checkout.expired" => PolarExpress.Events.CheckoutExpired,
      "checkout.updated" => PolarExpress.Events.CheckoutUpdated,
      "customer.created" => PolarExpress.Events.CustomerCreated,
      "customer.deleted" => PolarExpress.Events.CustomerDeleted,
      "customer.state_changed" => PolarExpress.Events.CustomerStateChanged,
      "customer.updated" => PolarExpress.Events.CustomerUpdated,
      "customer_seat.assigned" => PolarExpress.Events.CustomerSeatAssigned,
      "customer_seat.claimed" => PolarExpress.Events.CustomerSeatClaimed,
      "customer_seat.revoked" => PolarExpress.Events.CustomerSeatRevoked,
      "member.created" => PolarExpress.Events.MemberCreated,
      "member.deleted" => PolarExpress.Events.MemberDeleted,
      "member.updated" => PolarExpress.Events.MemberUpdated,
      "order.created" => PolarExpress.Events.OrderCreated,
      "order.paid" => PolarExpress.Events.OrderPaid,
      "order.refunded" => PolarExpress.Events.OrderRefunded,
      "order.updated" => PolarExpress.Events.OrderUpdated,
      "organization.updated" => PolarExpress.Events.OrganizationUpdated,
      "product.created" => PolarExpress.Events.ProductCreated,
      "product.updated" => PolarExpress.Events.ProductUpdated,
      "refund.created" => PolarExpress.Events.RefundCreated,
      "refund.updated" => PolarExpress.Events.RefundUpdated,
      "subscription.active" => PolarExpress.Events.SubscriptionActive,
      "subscription.canceled" => PolarExpress.Events.SubscriptionCanceled,
      "subscription.created" => PolarExpress.Events.SubscriptionCreated,
      "subscription.past_due" => PolarExpress.Events.SubscriptionPastDue,
      "subscription.revoked" => PolarExpress.Events.SubscriptionRevoked,
      "subscription.uncanceled" => PolarExpress.Events.SubscriptionUncanceled,
      "subscription.updated" => PolarExpress.Events.SubscriptionUpdated
    }
  end
end
