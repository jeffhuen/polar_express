# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SystemEvent do
  @moduledoc "SystemEvent union type."

  @type t ::
          PolarExpress.Schemas.MeterCreditEvent.t()
          | PolarExpress.Schemas.MeterResetEvent.t()
          | PolarExpress.Schemas.BenefitGrantedEvent.t()
          | PolarExpress.Schemas.BenefitCycledEvent.t()
          | PolarExpress.Schemas.BenefitUpdatedEvent.t()
          | PolarExpress.Schemas.BenefitRevokedEvent.t()
          | PolarExpress.Schemas.SubscriptionCreatedEvent.t()
          | PolarExpress.Schemas.SubscriptionCycledEvent.t()
          | PolarExpress.Schemas.SubscriptionCanceledEvent.t()
          | PolarExpress.Schemas.SubscriptionRevokedEvent.t()
          | PolarExpress.Schemas.SubscriptionUncanceledEvent.t()
          | PolarExpress.Schemas.SubscriptionProductUpdatedEvent.t()
          | PolarExpress.Schemas.SubscriptionSeatsUpdatedEvent.t()
          | PolarExpress.Schemas.SubscriptionBillingPeriodUpdatedEvent.t()
          | PolarExpress.Schemas.OrderPaidEvent.t()
          | PolarExpress.Schemas.OrderRefundedEvent.t()
          | PolarExpress.Schemas.CheckoutCreatedEvent.t()
          | PolarExpress.Schemas.CustomerCreatedEvent.t()
          | PolarExpress.Schemas.CustomerUpdatedEvent.t()
          | PolarExpress.Schemas.CustomerDeletedEvent.t()
          | PolarExpress.Schemas.BalanceOrderEvent.t()
          | PolarExpress.Schemas.BalanceCreditOrderEvent.t()
          | PolarExpress.Schemas.BalanceRefundEvent.t()
          | PolarExpress.Schemas.BalanceRefundReversalEvent.t()
          | PolarExpress.Schemas.BalanceDisputeEvent.t()
          | PolarExpress.Schemas.BalanceDisputeReversalEvent.t()

  @schema_name "SystemEvent"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.MeterCreditEvent,
      PolarExpress.Schemas.MeterResetEvent,
      PolarExpress.Schemas.BenefitGrantedEvent,
      PolarExpress.Schemas.BenefitCycledEvent,
      PolarExpress.Schemas.BenefitUpdatedEvent,
      PolarExpress.Schemas.BenefitRevokedEvent,
      PolarExpress.Schemas.SubscriptionCreatedEvent,
      PolarExpress.Schemas.SubscriptionCycledEvent,
      PolarExpress.Schemas.SubscriptionCanceledEvent,
      PolarExpress.Schemas.SubscriptionRevokedEvent,
      PolarExpress.Schemas.SubscriptionUncanceledEvent,
      PolarExpress.Schemas.SubscriptionProductUpdatedEvent,
      PolarExpress.Schemas.SubscriptionSeatsUpdatedEvent,
      PolarExpress.Schemas.SubscriptionBillingPeriodUpdatedEvent,
      PolarExpress.Schemas.OrderPaidEvent,
      PolarExpress.Schemas.OrderRefundedEvent,
      PolarExpress.Schemas.CheckoutCreatedEvent,
      PolarExpress.Schemas.CustomerCreatedEvent,
      PolarExpress.Schemas.CustomerUpdatedEvent,
      PolarExpress.Schemas.CustomerDeletedEvent,
      PolarExpress.Schemas.BalanceOrderEvent,
      PolarExpress.Schemas.BalanceCreditOrderEvent,
      PolarExpress.Schemas.BalanceRefundEvent,
      PolarExpress.Schemas.BalanceRefundReversalEvent,
      PolarExpress.Schemas.BalanceDisputeEvent,
      PolarExpress.Schemas.BalanceDisputeReversalEvent
    ]
  end

  def __discriminator__ do
    {"name",
     %{
       "balance.credit_order" => PolarExpress.Schemas.BalanceCreditOrderEvent,
       "balance.dispute" => PolarExpress.Schemas.BalanceDisputeEvent,
       "balance.dispute_reversal" => PolarExpress.Schemas.BalanceDisputeReversalEvent,
       "balance.order" => PolarExpress.Schemas.BalanceOrderEvent,
       "balance.refund" => PolarExpress.Schemas.BalanceRefundEvent,
       "balance.refund_reversal" => PolarExpress.Schemas.BalanceRefundReversalEvent,
       "benefit.cycled" => PolarExpress.Schemas.BenefitCycledEvent,
       "benefit.granted" => PolarExpress.Schemas.BenefitGrantedEvent,
       "benefit.revoked" => PolarExpress.Schemas.BenefitRevokedEvent,
       "benefit.updated" => PolarExpress.Schemas.BenefitUpdatedEvent,
       "checkout.created" => PolarExpress.Schemas.CheckoutCreatedEvent,
       "customer.created" => PolarExpress.Schemas.CustomerCreatedEvent,
       "customer.deleted" => PolarExpress.Schemas.CustomerDeletedEvent,
       "customer.updated" => PolarExpress.Schemas.CustomerUpdatedEvent,
       "meter.credited" => PolarExpress.Schemas.MeterCreditEvent,
       "meter.reset" => PolarExpress.Schemas.MeterResetEvent,
       "order.paid" => PolarExpress.Schemas.OrderPaidEvent,
       "order.refunded" => PolarExpress.Schemas.OrderRefundedEvent,
       "subscription.billing_period_updated" =>
         PolarExpress.Schemas.SubscriptionBillingPeriodUpdatedEvent,
       "subscription.canceled" => PolarExpress.Schemas.SubscriptionCanceledEvent,
       "subscription.created" => PolarExpress.Schemas.SubscriptionCreatedEvent,
       "subscription.cycled" => PolarExpress.Schemas.SubscriptionCycledEvent,
       "subscription.product_updated" => PolarExpress.Schemas.SubscriptionProductUpdatedEvent,
       "subscription.revoked" => PolarExpress.Schemas.SubscriptionRevokedEvent,
       "subscription.seats_updated" => PolarExpress.Schemas.SubscriptionSeatsUpdatedEvent,
       "subscription.uncanceled" => PolarExpress.Schemas.SubscriptionUncanceledEvent
     }}
  end
end
