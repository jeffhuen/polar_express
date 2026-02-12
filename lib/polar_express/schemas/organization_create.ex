# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationCreate do
  @moduledoc """
  OrganizationCreate
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `customer_email_settings` - Nullable.
  * `customer_portal_settings` - Nullable.
  * `default_presentment_currency` - Default presentment currency for the organization
  * `details` - Additional, private, business details Polar needs about active organizations for compliance (KYC). Nullable.
  * `email` - Public support email. Nullable.
  * `feature_settings` - Nullable.
  * `name`
  * `notification_settings` - Nullable.
  * `slug`
  * `socials` - Link to social profiles. Nullable.
  * `subscription_settings` - Nullable.
  * `website` - Official website of the organization. Nullable.
  """
  @type t :: %__MODULE__{
          avatar_url: String.t() | nil,
          customer_email_settings:
            PolarExpress.Schemas.OrganizationCustomerEmailSettings.t() | nil,
          customer_portal_settings:
            PolarExpress.Schemas.OrganizationCustomerPortalSettings.t() | nil,
          default_presentment_currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil,
          details: PolarExpress.Schemas.OrganizationDetails.t() | nil,
          email: String.t() | nil,
          feature_settings: PolarExpress.Schemas.OrganizationFeatureSettings.t() | nil,
          name: String.t() | nil,
          notification_settings: PolarExpress.Schemas.OrganizationNotificationSettings.t() | nil,
          slug: String.t() | nil,
          socials: [PolarExpress.Schemas.OrganizationSocialLink.t()] | nil,
          subscription_settings: PolarExpress.Schemas.OrganizationSubscriptionSettings.t() | nil,
          website: String.t() | nil
        }

  defstruct [
    :avatar_url,
    :customer_email_settings,
    :customer_portal_settings,
    :default_presentment_currency,
    :details,
    :email,
    :feature_settings,
    :name,
    :notification_settings,
    :slug,
    :socials,
    :subscription_settings,
    :website
  ]

  @schema_name "OrganizationCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "customer_email_settings" => PolarExpress.Schemas.OrganizationCustomerEmailSettings,
      "customer_portal_settings" => PolarExpress.Schemas.OrganizationCustomerPortalSettings,
      "default_presentment_currency" => PolarExpress.Schemas.PresentmentCurrency,
      "details" => PolarExpress.Schemas.OrganizationDetails,
      "feature_settings" => PolarExpress.Schemas.OrganizationFeatureSettings,
      "notification_settings" => PolarExpress.Schemas.OrganizationNotificationSettings,
      "socials" => PolarExpress.Schemas.OrganizationSocialLink,
      "subscription_settings" => PolarExpress.Schemas.OrganizationSubscriptionSettings
    }
  end
end
