# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductCreateOneTime do
  @moduledoc """
  ProductCreateOneTime
  """

  @typedoc """
  * `attached_custom_fields` - List of custom fields to attach.
  * `description` - The description of the product. Nullable.
  * `medias` - List of file IDs. Each one must be on the same organization as the product, of type `product_media` and correctly uploaded. Nullable.
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `name` - The name of the product.
  * `organization_id` - The ID of the organization owning the product. **Required unless you use an organization token.** Nullable.
  * `prices` - List of available prices for this product. It should contain at most one static price (fixed, custom or free), and any number of metered prices. Metered prices are not supported on one-time purchase products.
  * `recurring_interval` - States that the product is a one-time purchase.
  * `recurring_interval_count` - One-time products don't have a recurring interval count.
  * `visibility` - The visibility of the product.
  """
  @type t :: %__MODULE__{
          attached_custom_fields: [PolarExpress.Schemas.AttachedCustomFieldCreate.t()] | nil,
          description: String.t() | nil,
          medias: [String.t()] | nil,
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          prices:
            [
              PolarExpress.Schemas.ProductPriceFixedCreate.t()
              | PolarExpress.Schemas.ProductPriceCustomCreate.t()
              | PolarExpress.Schemas.ProductPriceFreeCreate.t()
              | PolarExpress.Schemas.ProductPriceSeatBasedCreate.t()
              | PolarExpress.Schemas.ProductPriceMeteredUnitCreate.t()
            ]
            | nil,
          recurring_interval: term(),
          recurring_interval_count: term(),
          visibility: PolarExpress.Schemas.ProductVisibility.t() | nil
        }

  defstruct [
    :attached_custom_fields,
    :description,
    :medias,
    :metadata,
    :name,
    :organization_id,
    :prices,
    :recurring_interval,
    :recurring_interval_count,
    :visibility
  ]

  @schema_name "ProductCreateOneTime"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "attached_custom_fields" => PolarExpress.Schemas.AttachedCustomFieldCreate,
      "prices" =>
        {:union, :discriminated, "amount_type",
         %{
           "custom" => PolarExpress.Schemas.ProductPriceCustomCreate,
           "fixed" => PolarExpress.Schemas.ProductPriceFixedCreate,
           "free" => PolarExpress.Schemas.ProductPriceFreeCreate,
           "metered_unit" => PolarExpress.Schemas.ProductPriceMeteredUnitCreate,
           "seat_based" => PolarExpress.Schemas.ProductPriceSeatBasedCreate
         }},
      "visibility" => PolarExpress.Schemas.ProductVisibility
    }
  end
end
