# File generated from our OpenAPI spec
defmodule PolarExpress.ObjectTypes do
  @moduledoc false

  def object_name_to_module do
    %{
      "benefit-grants" => PolarExpress.Resources.BenefitGrants,
      "benefits" => PolarExpress.Resources.Benefits,
      "checkout-links" => PolarExpress.Resources.CheckoutLinks,
      "checkouts" => PolarExpress.Resources.Checkouts,
      "custom-fields" => PolarExpress.Resources.CustomFields,
      "customer-seats" => PolarExpress.Resources.CustomerSeats,
      "customer-session" => PolarExpress.Resources.CustomerPortal.CustomerSession,
      "customer-sessions" => PolarExpress.Resources.CustomerSessions,
      "customer_meters" => PolarExpress.Resources.CustomerMeters,
      "customers" => PolarExpress.Resources.Customers,
      "discounts" => PolarExpress.Resources.Discounts,
      "disputes" => PolarExpress.Resources.Disputes,
      "downloadables" => PolarExpress.Resources.CustomerPortal.Downloadables,
      "event-types" => PolarExpress.Resources.EventTypes,
      "events" => PolarExpress.Resources.Events,
      "files" => PolarExpress.Resources.Files,
      "license-keys" => PolarExpress.Resources.CustomerPortal.LicenseKeys,
      "license_keys" => PolarExpress.Resources.LicenseKeys,
      "member-sessions" => PolarExpress.Resources.MemberSessions,
      "members" => PolarExpress.Resources.Members,
      "meters" => PolarExpress.Resources.Meters,
      "metrics" => PolarExpress.Resources.Metrics,
      "oauth2" => PolarExpress.Resources.Oauth2,
      "orders" => PolarExpress.Resources.Orders,
      "organization_access_tokens" => PolarExpress.Resources.OrganizationAccessTokens,
      "organizations" => PolarExpress.Resources.Organizations,
      "payments" => PolarExpress.Resources.Payments,
      "products" => PolarExpress.Resources.Products,
      "refunds" => PolarExpress.Resources.Refunds,
      "seats" => PolarExpress.Resources.CustomerPortal.Seats,
      "subscriptions" => PolarExpress.Resources.Subscriptions,
      "wallets" => PolarExpress.Resources.CustomerPortal.Wallets,
      "webhooks" => PolarExpress.Resources.Webhooks
    }
  end

  def v2_object_name_to_module do
    %{}
  end
end
