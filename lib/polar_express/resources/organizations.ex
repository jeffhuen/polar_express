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
  * `notification_settings` - Settings related to notifications
  * `payout_account_id` - ID of the payout account.
  * `proration_behavior` - Proration behavior applied when customer updates their subscription from the portal.
  * `slug` - Unique organization slug in checkout, customer portal and credit card statements.
  * `socials` - Links to social profiles.
  * `status` - Current organization status
  * `subscription_settings` - Settings related to subscriptions management
  * `website` - Official website of the organization.
  """
  @type t :: %__MODULE__{
          account_id: term() | nil,
          allow_customer_updates: boolean() | nil,
          avatar_url: term() | nil,
          capabilities: map() | nil,
          country: term() | nil,
          created_at: String.t() | nil,
          customer_email_settings: map() | nil,
          customer_portal_settings: map() | nil,
          default_presentment_currency: String.t() | nil,
          default_tax_behavior: map() | nil,
          details_submitted_at: term() | nil,
          email: term() | nil,
          feature_settings: term() | nil,
          id: String.t() | nil,
          modified_at: term() | nil,
          name: String.t() | nil,
          notification_settings: map() | nil,
          payout_account_id: term() | nil,
          proration_behavior: map() | nil,
          slug: String.t() | nil,
          socials: [map()] | nil,
          status: map() | nil,
          subscription_settings: map() | nil,
          website: term() | nil
        }

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
    :notification_settings,
    :payout_account_id,
    :proration_behavior,
    :slug,
    :socials,
    :status,
    :subscription_settings,
    :website
  ]

  @object_name "organizations"
  def object_name, do: @object_name
end
