# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CheckoutLinkProduct do
  @moduledoc """
  CheckoutLinkProduct

  Product data for a checkout link.
  """

  @typedoc """
  * `benefits` - List of benefits granted by the product.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `description` - The description of the product. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  * `is_archived` - Whether the product is archived and no longer available.
  * `is_recurring` - Whether the product is a subscription.
  * `medias` - List of medias associated to the product.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - The name of the product.
  * `organization_id` - The ID of the organization owning the product. Format: uuid4.
  * `prices` - List of prices for this product.
  * `recurring_interval` - The recurring interval of the product. If `None`, the product is a one-time purchase. Nullable.
  * `recurring_interval_count` - Number of interval units of the subscription. If this is set to 1 the charge will happen every interval (e.g. every month), if set to 2 it will be every other month, and so on. None for one-time products. Nullable.
  * `trial_interval` - The interval unit for the trial period. Nullable.
  * `trial_interval_count` - The number of interval units for the trial period. Nullable.
  * `visibility` - The visibility of the product.
  """
  @type t :: %__MODULE__{
          benefits: [PolarExpress.Schemas.BenefitPublic.t()] | nil,
          created_at: DateTime.t() | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          is_archived: boolean() | nil,
          is_recurring: boolean() | nil,
          medias: [PolarExpress.Schemas.ProductMediaFileRead.t()] | nil,
          metadata: map() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          prices:
            [
              PolarExpress.Schemas.LegacyRecurringProductPrice.t()
              | PolarExpress.Schemas.ProductPrice.t()
            ]
            | nil,
          recurring_interval: PolarExpress.Schemas.SubscriptionRecurringInterval.t() | nil,
          recurring_interval_count: integer() | nil,
          trial_interval: PolarExpress.Schemas.TrialInterval.t() | nil,
          trial_interval_count: integer() | nil,
          visibility: PolarExpress.Schemas.ProductVisibility.t() | nil
        }

  defstruct [
    :benefits,
    :created_at,
    :description,
    :id,
    :is_archived,
    :is_recurring,
    :medias,
    :metadata,
    :modified_at,
    :name,
    :organization_id,
    :prices,
    :recurring_interval,
    :recurring_interval_count,
    :trial_interval,
    :trial_interval_count,
    :visibility
  ]

  @schema_name "CheckoutLinkProduct"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "benefits" => PolarExpress.Schemas.BenefitPublic,
      "medias" => PolarExpress.Schemas.ProductMediaFileRead,
      "prices" =>
        {:union, :variants,
         [PolarExpress.Schemas.LegacyRecurringProductPrice, PolarExpress.Schemas.ProductPrice]},
      "recurring_interval" => PolarExpress.Schemas.SubscriptionRecurringInterval,
      "trial_interval" => PolarExpress.Schemas.TrialInterval,
      "visibility" => PolarExpress.Schemas.ProductVisibility
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
