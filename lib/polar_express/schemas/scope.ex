# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Scope do
  @moduledoc "Scope enum. Possible values: `openid`, `profile`, `email`, `user:read`, `user:write`, `web:read`, `web:write`, `organizations:read`, `organizations:write`, `custom_fields:read`, `custom_fields:write`, `discounts:read`, `discounts:write`, `checkout_links:read`, `checkout_links:write`, `checkouts:read`, `checkouts:write`, `transactions:read`, `transactions:write`, `payouts:read`, `payouts:write`, `products:read`, `products:write`, `benefits:read`, `benefits:write`, `events:read`, `events:write`, `meters:read`, `meters:write`, `files:read`, `files:write`, `subscriptions:read`, `subscriptions:write`, `customers:read`, `customers:write`, `members:read`, `members:write`, `wallets:read`, `wallets:write`, `disputes:read`, `customer_meters:read`, `customer_sessions:write`, `member_sessions:write`, `customer_seats:read`, `customer_seats:write`, `orders:read`, `orders:write`, `refunds:read`, `refunds:write`, `payments:read`, `metrics:read`, `webhooks:read`, `webhooks:write`, `license_keys:read`, `license_keys:write`, `customer_portal:read`, `customer_portal:write`, `notifications:read`, `notifications:write`, `notification_recipients:read`, `notification_recipients:write`, `organization_access_tokens:read`, `organization_access_tokens:write`."

  @type t :: String.t()

  @values [
    "openid",
    "profile",
    "email",
    "user:read",
    "user:write",
    "web:read",
    "web:write",
    "organizations:read",
    "organizations:write",
    "custom_fields:read",
    "custom_fields:write",
    "discounts:read",
    "discounts:write",
    "checkout_links:read",
    "checkout_links:write",
    "checkouts:read",
    "checkouts:write",
    "transactions:read",
    "transactions:write",
    "payouts:read",
    "payouts:write",
    "products:read",
    "products:write",
    "benefits:read",
    "benefits:write",
    "events:read",
    "events:write",
    "meters:read",
    "meters:write",
    "files:read",
    "files:write",
    "subscriptions:read",
    "subscriptions:write",
    "customers:read",
    "customers:write",
    "members:read",
    "members:write",
    "wallets:read",
    "wallets:write",
    "disputes:read",
    "customer_meters:read",
    "customer_sessions:write",
    "member_sessions:write",
    "customer_seats:read",
    "customer_seats:write",
    "orders:read",
    "orders:write",
    "refunds:read",
    "refunds:write",
    "payments:read",
    "metrics:read",
    "webhooks:read",
    "webhooks:write",
    "license_keys:read",
    "license_keys:write",
    "customer_portal:read",
    "customer_portal:write",
    "notifications:read",
    "notifications:write",
    "notification_recipients:read",
    "notification_recipients:write",
    "organization_access_tokens:read",
    "organization_access_tokens:write"
  ]

  @doc "List of valid enum values."
  def values, do: @values

  @schema_name "Scope"
  def schema_name, do: @schema_name
end
