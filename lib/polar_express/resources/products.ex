# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Products do
  @moduledoc """
  Products

  Products API operations.
  """

  @typedoc """
  * `attached_custom_fields` - List of custom fields attached to the product.
  * `benefits` - List of benefits granted by the product.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `description` - The description of the product.
  * `id` - The ID of the object. Format: uuid4.
  * `is_archived` - Whether the product is archived and no longer available.
  * `is_recurring` - Whether the product is a subscription.
  * `medias` - List of medias associated to the product.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `name` - The name of the product.
  * `organization_id` - The ID of the organization owning the product. Format: uuid4.
  * `prices` - List of prices for this product.
  * `recurring_interval` - The recurring interval of the product. If `None`, the product is a one-time purchase.
  * `recurring_interval_count` - Number of interval units of the subscription. If this is set to 1 the charge will happen every interval (e.g. every month), if set to 2 it will be every other month, and so on. None for one-time products.
  * `trial_interval` - The interval unit for the trial period.
  * `trial_interval_count` - The number of interval units for the trial period.
  * `visibility` - The visibility of the product.
  """
  @type t :: %__MODULE__{
          attached_custom_fields: [map()] | nil,
          benefits: [map()] | nil,
          created_at: String.t() | nil,
          description: map() | nil,
          id: String.t() | nil,
          is_archived: boolean() | nil,
          is_recurring: boolean() | nil,
          medias: [map()] | nil,
          metadata: map() | nil,
          modified_at: map() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          prices: [map()] | nil,
          recurring_interval: map() | nil,
          recurring_interval_count: map() | nil,
          trial_interval: map() | nil,
          trial_interval_count: map() | nil,
          visibility: map() | nil
        }

  defstruct [
    :attached_custom_fields,
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

  @object_name "products"
  def object_name, do: @object_name
end
