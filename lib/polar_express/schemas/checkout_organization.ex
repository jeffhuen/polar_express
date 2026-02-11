# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutOrganization do
  @moduledoc """
  CheckoutOrganization
  """

  @typedoc """
  * `allow_customer_updates` - Whether customers can update their subscriptions from the customer portal.
  * `avatar_url` - Avatar URL shown in checkout, customer portal, emails etc. Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - Organization name shown in checkout, customer portal, emails etc.
  * `proration_behavior` - Proration behavior applied when customer updates their subscription from the portal.
  * `slug` - Unique organization slug in checkout, customer portal and credit card statements.
  """
  @type t :: %__MODULE__{
          allow_customer_updates: boolean() | nil,
          avatar_url: String.t() | nil,
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil,
          proration_behavior: PolarExpress.Schemas.SubscriptionProrationBehavior.t() | nil,
          slug: String.t() | nil
        }

  defstruct [
    :allow_customer_updates,
    :avatar_url,
    :created_at,
    :id,
    :modified_at,
    :name,
    :proration_behavior,
    :slug
  ]

  @schema_name "CheckoutOrganization"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "proration_behavior" => PolarExpress.Schemas.SubscriptionProrationBehavior
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
