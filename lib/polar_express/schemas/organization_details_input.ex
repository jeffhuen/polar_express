# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationDetailsInput do
  @moduledoc """
  OrganizationDetailsInput
  """

  @typedoc """
  * `pricing_models` - Pricing models used by the organization.
  * `product_description` - Description of digital products being sold. Nullable.
  * `selling_categories` - Categories of products being sold.
  * `switching` - Switching from another platform?
  * `switching_from` - Which platform the organization is migrating from. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :pricing_models,
    :product_description,
    :selling_categories,
    :switching,
    :switching_from
  ]

  @schema_name "OrganizationDetailsInput"
  def schema_name, do: @schema_name
end
