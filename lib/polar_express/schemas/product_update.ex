# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductUpdate do
  @moduledoc """
  ProductUpdate

  Schema to update a product.
  """

  @typedoc """
  * `attached_custom_fields` - Nullable.
  * `description` - The description of the product. Nullable.
  * `is_archived` - Whether the product is archived. If `true`, the product won't be available for purchase anymore. Existing customers will still have access to their benefits, and subscriptions will continue normally. Nullable.
  * `medias` - List of file IDs. Each one must be on the same organization as the product, of type `product_media` and correctly uploaded. Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `name` - Nullable.
  * `prices` - List of available prices for this product. If you want to keep existing prices, include them in the list as an `ExistingProductPrice` object. Nullable.
  * `recurring_interval` - The recurring interval of the product. If `None`, the product is a one-time purchase. **Can only be set on legacy recurring products. Once set, it can't be changed.** Nullable.
  * `recurring_interval_count` - Number of interval units of the subscription. If this is set to 1 the charge will happen every interval (e.g. every month), if set to 2 it will be every other month, and so on. Once set, it can't be changed.** Nullable.
  * `trial_interval` - The interval unit for the trial period. Nullable.
  * `trial_interval_count` - The number of interval units for the trial period. Nullable.
  * `visibility` - The visibility of the product. Nullable.
  """
  @type t :: %__MODULE__{
          attached_custom_fields: [PolarExpress.Schemas.AttachedCustomFieldCreate.t()] | nil,
          description: String.t() | nil,
          is_archived: boolean() | nil,
          medias: [String.t()] | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          prices:
            [
              PolarExpress.Schemas.ExistingProductPrice.t()
              | PolarExpress.Schemas.ProductPriceFixedCreate.t()
              | PolarExpress.Schemas.ProductPriceCustomCreate.t()
              | PolarExpress.Schemas.ProductPriceFreeCreate.t()
              | PolarExpress.Schemas.ProductPriceSeatBasedCreate.t()
              | PolarExpress.Schemas.ProductPriceMeteredUnitCreate.t()
            ]
            | nil,
          recurring_interval: PolarExpress.Schemas.SubscriptionRecurringInterval.t() | nil,
          recurring_interval_count: integer() | nil,
          trial_interval: PolarExpress.Schemas.TrialInterval.t() | nil,
          trial_interval_count: integer() | nil,
          visibility: PolarExpress.Schemas.ProductVisibility.t() | nil
        }

  defstruct [
    :attached_custom_fields,
    :description,
    :is_archived,
    :medias,
    :metadata,
    :name,
    :prices,
    :recurring_interval,
    :recurring_interval_count,
    :trial_interval,
    :trial_interval_count,
    :visibility
  ]

  @schema_name "ProductUpdate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "attached_custom_fields" => PolarExpress.Schemas.AttachedCustomFieldCreate,
      "prices" => {:union, :variants, [PolarExpress.Schemas.ExistingProductPrice]},
      "recurring_interval" => PolarExpress.Schemas.SubscriptionRecurringInterval,
      "trial_interval" => PolarExpress.Schemas.TrialInterval,
      "visibility" => PolarExpress.Schemas.ProductVisibility
    }
  end
end
