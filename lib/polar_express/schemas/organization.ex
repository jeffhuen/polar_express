# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Organization do
  @moduledoc """
  Organization
  """

  @typedoc """
  * `allow_customer_updates` - Whether customers can update their subscriptions from the customer portal.
  * `avatar_url` - Avatar URL shown in checkout, customer portal, emails etc. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer_email_settings` - Settings related to customer emails
  * `customer_portal_settings` - Settings related to the customer portal
  * `default_presentment_currency` - Default presentment currency. Used as fallback in checkout and customer portal, if the customer's local currency is not available.
  * `details_submitted_at` - When the business details were submitted. Nullable.
  * `email` - Public support email. Nullable.
  * `feature_settings` - Organization feature settings Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - Organization name shown in checkout, customer portal, emails etc.
  * `notification_settings` - Settings related to notifications
  * `proration_behavior` - Proration behavior applied when customer updates their subscription from the portal.
  * `slug` - Unique organization slug in checkout, customer portal and credit card statements.
  * `socials` - Links to social profiles.
  * `status` - Current organization status
  * `subscription_settings` - Settings related to subscriptions management
  * `website` - Official website of the organization. Nullable.
  """
  @type t :: %__MODULE__{
          allow_customer_updates: boolean() | nil,
          avatar_url: String.t() | nil,
          created_at: DateTime.t() | nil,
          customer_email_settings:
            PolarExpress.Schemas.OrganizationCustomerEmailSettings.t() | nil,
          customer_portal_settings:
            PolarExpress.Schemas.OrganizationCustomerPortalSettings.t() | nil,
          default_presentment_currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil,
          details_submitted_at: DateTime.t() | nil,
          email: String.t() | nil,
          feature_settings: PolarExpress.Schemas.OrganizationFeatureSettings.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil,
          notification_settings: PolarExpress.Schemas.OrganizationNotificationSettings.t() | nil,
          proration_behavior: PolarExpress.Schemas.SubscriptionProrationBehavior.t() | nil,
          slug: String.t() | nil,
          socials: [PolarExpress.Schemas.OrganizationSocialLink.t()] | nil,
          status: PolarExpress.Schemas.OrganizationStatus.t() | nil,
          subscription_settings: PolarExpress.Schemas.OrganizationSubscriptionSettings.t() | nil,
          website: String.t() | nil
        }

  defstruct [
    :allow_customer_updates,
    :avatar_url,
    :created_at,
    :customer_email_settings,
    :customer_portal_settings,
    :default_presentment_currency,
    :details_submitted_at,
    :email,
    :feature_settings,
    :id,
    :modified_at,
    :name,
    :notification_settings,
    :proration_behavior,
    :slug,
    :socials,
    :status,
    :subscription_settings,
    :website
  ]

  @schema_name "Organization"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer_email_settings" => PolarExpress.Schemas.OrganizationCustomerEmailSettings,
      "customer_portal_settings" => PolarExpress.Schemas.OrganizationCustomerPortalSettings,
      "default_presentment_currency" => PolarExpress.Schemas.PresentmentCurrency,
      "feature_settings" => PolarExpress.Schemas.OrganizationFeatureSettings,
      "notification_settings" => PolarExpress.Schemas.OrganizationNotificationSettings,
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior,
      "socials" => PolarExpress.Schemas.OrganizationSocialLink,
      "status" => PolarExpress.Schemas.OrganizationStatus,
      "subscription_settings" => PolarExpress.Schemas.OrganizationSubscriptionSettings
    }
  end

  def __date_fields__, do: [:created_at, :details_submitted_at, :modified_at]
end
