# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationWithRole do
  @moduledoc """
  OrganizationWithRole

  Variant of `Organization` embedded on `GET /v1/users/me` that
  includes the user's role on the organization.
  """

  @typedoc """
  * `account_id` - ID of the transactions account. Nullable.
  * `allow_customer_updates` - Whether customers can update their subscriptions from the customer portal.
  * `avatar_url` - Avatar URL shown in checkout, customer portal, emails etc. Nullable.
  * `capabilities` - Capabilities currently granted to the organization.
  * `country` - Two-letter country code (ISO 3166-1 alpha-2). Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer_email_settings` - Settings related to customer emails
  * `customer_portal_settings` - Settings related to the customer portal
  * `default_presentment_currency` - Default presentment currency. Used as fallback in checkout and customer portal, if the customer's local currency is not available.
  * `default_tax_behavior` - Default tax behavior applied on products.
  * `details_submitted_at` - When the business details were submitted for review. Nullable.
  * `dispute_settings` - Settings related to disputes
  * `email` - Public support email. Nullable.
  * `embed_hosts` - Hosts allowed to embed this organization's checkout. An entry is a host and an optional port, without a scheme: HTTPS is always allowed, and HTTP too for local hosts — `localhost`, any `.localhost` or `.local` name, and loopback or private addresses. `*.example.com` matches any subdomain, but not `example.com` itself. An app origin such as `chrome-extension://abcdef` carries its scheme, having no host to match on.
  * `feature_settings` - Organization feature settings Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - Organization name shown in checkout, customer portal, emails etc.
  * `onboarding_resubmission_requested_at` - When Polar requested that the organization review and resubmit its onboarding information, if applicable. Nullable.
  * `payout_account_id` - ID of the payout account. Nullable.
  * `permissions` - The permissions the user's role grants on this organization.
  * `proration_behavior` - Proration behavior applied when customer updates their subscription from the portal.
  * `role` - The user's role on this organization.
  * `slug` - Unique organization slug in checkout, customer portal and credit card statements.
  * `socials` - Links to social profiles.
  * `sso_enforced` - Whether members must access this organization through its SSO connection.
  * `status` - Current organization status
  * `subscription_settings` - Settings related to subscriptions management
  * `website` - Official website of the organization. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :account_id,
    :allow_customer_updates,
    :avatar_url,
    :capabilities,
    :country,
    :created_at,
    :customer_email_settings,
    :customer_portal_settings,
    :default_presentment_currency,
    :default_tax_behavior,
    :details_submitted_at,
    :dispute_settings,
    :email,
    :embed_hosts,
    :feature_settings,
    :id,
    :modified_at,
    :name,
    :onboarding_resubmission_requested_at,
    :payout_account_id,
    :permissions,
    :proration_behavior,
    :role,
    :slug,
    :socials,
    :sso_enforced,
    :status,
    :subscription_settings,
    :website
  ]

  @schema_name "OrganizationWithRole"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "capabilities" => PolarExpress.Schemas.OrganizationCapabilities,
      "customer_email_settings" => PolarExpress.Schemas.OrganizationCustomerEmailSettings,
      "customer_portal_settings" => PolarExpress.Schemas.OrganizationCustomerPortalSettings,
      "default_tax_behavior" => PolarExpress.Schemas.TaxBehaviorOption,
      "dispute_settings" => PolarExpress.Schemas.OrganizationDisputeSettings,
      "feature_settings" => PolarExpress.Schemas.OrganizationFeatureSettings,
      "permissions" => PolarExpress.Schemas.OrganizationPermission,
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior,
      "role" => PolarExpress.Schemas.OrganizationRole,
      "socials" => PolarExpress.Schemas.OrganizationSocialLink,
      "status" => PolarExpress.Schemas.OrganizationStatus,
      "subscription_settings" => PolarExpress.Schemas.OrganizationSubscriptionSettings
    }
  end

  def __date_fields__,
    do: [:created_at, :details_submitted_at, :modified_at, :onboarding_resubmission_requested_at]
end
