# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductCreateRecurring do
  @moduledoc """
  ProductCreateRecurring
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
  * `meter_interval` - Optional meter cycle, independent of the billing interval. When set, overage settlement, meter resets and meter-credit grants run on this cadence rather than the billing interval — e.g. yearly billing with monthly credits. It must evenly divide the billing interval. If `None`, metered concerns follow the billing interval. **Once set, it can't be changed.** Nullable.
  * `meter_interval_count` - Number of meter interval units. Defaults to 1 when `meter_interval` is set. Ignored when `meter_interval` is `None`. Nullable.
  * `name` - The name of the product. Max length: 64.
  * `organization_id` - The ID of the organization owning the product. **Required unless you use an organization token.** Nullable.
  * `prices` - List of available prices for this product. It may combine at most one fixed price with one seat-based price (billed as `fixed + seat_charge`), or contain a single custom or free price, plus any number of metered prices. A free price cannot be combined with other prices, and a custom price cannot be combined with a fixed or seat-based price. Metered prices are not supported on one-time purchase products.
  * `recurring_interval` - The recurring interval of the product.
  * `recurring_interval_count` - Number of interval units of the subscription. If this is set to 1 the charge will happen every interval (e.g. every month), if set to 2 it will be every other month, and so on.
  * `trial_interval` - The interval unit for the trial period. Nullable.
  * `trial_interval_count` - The number of interval units for the trial period. Nullable.
  * `visibility` - The visibility of the product.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :attached_custom_fields,
    :description,
    :medias,
    :metadata,
    :meter_interval,
    :meter_interval_count,
    :name,
    :organization_id,
    :prices,
    :recurring_interval,
    :recurring_interval_count,
    :trial_interval,
    :trial_interval_count,
    :visibility
  ]

  @schema_name "ProductCreateRecurring"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "attached_custom_fields" => PolarExpress.Schemas.AttachedCustomFieldCreate,
      "meter_interval" => PolarExpress.Schemas.RecurringInterval,
      "prices" =>
        {:union, :discriminated, "amount_type",
         %{
           "custom" => PolarExpress.Schemas.ProductPriceCustomCreate,
           "fixed" => PolarExpress.Schemas.ProductPriceFixedCreate,
           "metered_unit" => PolarExpress.Schemas.ProductPriceMeteredUnitCreate,
           "seat_based" => PolarExpress.Schemas.ProductPriceSeatBasedCreate
         }},
      "recurring_interval" => PolarExpress.Schemas.RecurringInterval,
      "trial_interval" => PolarExpress.Schemas.TrialInterval,
      "visibility" => PolarExpress.Schemas.ProductVisibility
    }
  end
end
