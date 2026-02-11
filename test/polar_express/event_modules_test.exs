defmodule PolarExpress.EventModulesTest do
  use ExUnit.Case, async: true

  alias PolarExpress.Events.{
    BenefitGrantCreated,
    CheckoutCreated,
    CheckoutExpired,
    CheckoutUpdated,
    CustomerCreated,
    OrderPaid,
    OrganizationUpdated,
    RefundCreated,
    SubscriptionActive,
    SubscriptionCanceled,
    UnknownEvent
  }

  describe "event module count" do
    test "has all expected Polar webhook event modules" do
      event_files =
        Path.wildcard("lib/polar_express/events/*.ex") |> Enum.count()

      # 32 Polar events + 1 unknown_event = 33
      assert event_files >= 30, "Expected at least 30 event files, got #{event_files}"
    end

    test "event modules match Events.event_types/0 list plus unknown_event" do
      known_types = PolarExpress.Events.event_types()
      event_files = Path.wildcard("lib/polar_express/events/*.ex") |> Enum.count()
      # One file per known event type, plus unknown_event.ex
      assert event_files == length(known_types) + 1
    end
  end

  describe "event_type/0" do
    test "checkout.created" do
      assert CheckoutCreated.event_type() == "checkout.created"
    end

    test "checkout.updated" do
      assert CheckoutUpdated.event_type() == "checkout.updated"
    end

    test "checkout.expired" do
      assert CheckoutExpired.event_type() == "checkout.expired"
    end

    test "subscription.active" do
      assert SubscriptionActive.event_type() == "subscription.active"
    end

    test "subscription.canceled" do
      assert SubscriptionCanceled.event_type() == "subscription.canceled"
    end

    test "benefit_grant.created" do
      assert BenefitGrantCreated.event_type() == "benefit_grant.created"
    end

    test "customer.created" do
      assert CustomerCreated.event_type() == "customer.created"
    end

    test "order.paid" do
      assert OrderPaid.event_type() == "order.paid"
    end

    test "organization.updated" do
      assert OrganizationUpdated.event_type() == "organization.updated"
    end

    test "refund.created" do
      assert RefundCreated.event_type() == "refund.created"
    end

    test "unknown_event does not define event_type/0" do
      refute function_exported?(UnknownEvent, :event_type, 0)
    end
  end

  describe "struct fields" do
    test "event structs have :type and :data fields" do
      for mod <- [CheckoutCreated, SubscriptionActive, BenefitGrantCreated, CustomerCreated] do
        event = struct!(mod)
        assert Map.has_key?(event, :type), "#{inspect(mod)} missing :type field"
        assert Map.has_key?(event, :data), "#{inspect(mod)} missing :data field"
      end
    end

    test "unknown_event struct has :type and :data fields" do
      event = %UnknownEvent{}
      assert Map.has_key?(event, :type)
      assert Map.has_key?(event, :data)
    end

    test "struct defaults are nil" do
      event = %CheckoutCreated{}
      assert event.type == nil
      assert event.data == nil
    end
  end

  describe "module loading" do
    test "all event modules can be loaded" do
      modules = [
        PolarExpress.Events.BenefitCreated,
        PolarExpress.Events.BenefitUpdated,
        PolarExpress.Events.BenefitGrantCreated,
        PolarExpress.Events.BenefitGrantUpdated,
        PolarExpress.Events.BenefitGrantCycled,
        PolarExpress.Events.BenefitGrantRevoked,
        PolarExpress.Events.CheckoutCreated,
        PolarExpress.Events.CheckoutUpdated,
        PolarExpress.Events.CheckoutExpired,
        PolarExpress.Events.CustomerCreated,
        PolarExpress.Events.CustomerUpdated,
        PolarExpress.Events.CustomerDeleted,
        PolarExpress.Events.CustomerStateChanged,
        PolarExpress.Events.CustomerSeatAssigned,
        PolarExpress.Events.CustomerSeatClaimed,
        PolarExpress.Events.CustomerSeatRevoked,
        PolarExpress.Events.OrderCreated,
        PolarExpress.Events.OrderUpdated,
        PolarExpress.Events.OrderPaid,
        PolarExpress.Events.OrderRefunded,
        PolarExpress.Events.OrganizationUpdated,
        PolarExpress.Events.ProductCreated,
        PolarExpress.Events.ProductUpdated,
        PolarExpress.Events.RefundCreated,
        PolarExpress.Events.RefundUpdated,
        PolarExpress.Events.SubscriptionCreated,
        PolarExpress.Events.SubscriptionUpdated,
        PolarExpress.Events.SubscriptionActive,
        PolarExpress.Events.SubscriptionCanceled,
        PolarExpress.Events.SubscriptionUncanceled,
        PolarExpress.Events.SubscriptionRevoked,
        PolarExpress.Events.SubscriptionPastDue,
        PolarExpress.Events.UnknownEvent
      ]

      for mod <- modules do
        assert Code.ensure_loaded?(mod), "Failed to load #{inspect(mod)}"
      end
    end
  end

  describe "Events registry" do
    test "event_types/0 returns a list of known event type strings" do
      types = PolarExpress.Events.event_types()
      assert is_list(types)
      assert length(types) >= 30

      assert "checkout.created" in types
      assert "subscription.active" in types
      assert "benefit_grant.created" in types
      assert "customer.created" in types
      assert "order.paid" in types
    end

    test "valid_event_type?/1 returns true for known types" do
      assert PolarExpress.Events.valid_event_type?("checkout.created")
      assert PolarExpress.Events.valid_event_type?("subscription.canceled")
      assert PolarExpress.Events.valid_event_type?("order.refunded")
    end

    test "valid_event_type?/1 returns false for unknown types" do
      refute PolarExpress.Events.valid_event_type?("unknown.event")
      refute PolarExpress.Events.valid_event_type?("not.a.real.event")
    end

    test "every event module's event_type/0 is in the Events.event_types/0 list" do
      known_types = PolarExpress.Events.event_types()

      event_modules =
        Path.wildcard("lib/polar_express/events/*.ex")
        |> Enum.map(fn path ->
          path
          |> Path.basename(".ex")
          |> Macro.camelize()
          |> then(&Module.concat(PolarExpress.Events, &1))
        end)
        |> Enum.filter(&function_exported?(&1, :event_type, 0))

      for mod <- event_modules do
        type = mod.event_type()

        assert type in known_types,
               "#{inspect(mod)}.event_type/0 = #{inspect(type)} not in Events.event_types/0"
      end
    end
  end
end
