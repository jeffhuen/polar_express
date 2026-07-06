# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Organizations do
  @moduledoc """
  Organizations

  Organizations API operations.
  """

  @typedoc """
  * `account_id` - ID of the transactions account.
  * `allow_customer_updates` - Whether customers can update their subscriptions from the customer portal.
  * `avatar_url` - Avatar URL shown in checkout, customer portal, emails etc.
  * `capabilities` - Capabilities currently granted to the organization.
  * `country` - Two-letter country code (ISO 3166-1 alpha-2).
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer_email_settings` - Settings related to customer emails
  * `customer_portal_settings` - Settings related to the customer portal
  * `default_presentment_currency` - Default presentment currency. Used as fallback in checkout and customer portal, if the customer's local currency is not available.
  * `default_tax_behavior` - Default tax behavior applied on products.
  * `details_submitted_at` - When the business details were submitted for review.
  * `email` - Public support email.
  * `feature_settings` - Organization feature settings
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object.
  * `name` - Organization name shown in checkout, customer portal, emails etc.
  * `payout_account_id` - ID of the payout account.
  * `proration_behavior` - Proration behavior applied when customer updates their subscription from the portal.
  * `slug` - Unique organization slug in checkout, customer portal and credit card statements.
  * `socials` - Links to social profiles.
  * `sso_enforced` - Whether members must access this organization through its SSO connection.
  * `status` - Current organization status
  * `subscription_settings` - Settings related to subscriptions management
  * `website` - Official website of the organization.
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
    :email,
    :feature_settings,
    :id,
    :modified_at,
    :name,
    :payout_account_id,
    :proration_behavior,
    :slug,
    :socials,
    :sso_enforced,
    :status,
    :subscription_settings,
    :website
  ]

  @object_name "organizations"
  def object_name, do: @object_name
end
