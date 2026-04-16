# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationDetails do
  @moduledoc """
  OrganizationDetails
  """

  @typedoc """
  * `about` - Brief information about you and your business. Nullable. **Deprecated.**
  * `customer_acquisition` - Main customer acquisition channels. **Deprecated.**
  * `future_annual_revenue` - Estimated revenue in the next 12 months Nullable. **Deprecated.**
  * `intended_use` - How the organization will integrate and use Polar. Nullable. **Deprecated.**
  * `previous_annual_revenue` - Revenue from last year if applicable. Nullable. **Deprecated.**
  * `pricing_models` - Pricing models used by the organization.
  * `product_description` - Description of digital products being sold. Nullable.
  * `selling_categories` - Categories of products being sold.
  * `switching` - Switching from another platform?
  * `switching_from` - Which platform the organization is migrating from. Nullable.
  """
  @type t :: %__MODULE__{
          about: String.t() | nil,
          customer_acquisition: [String.t()] | nil,
          future_annual_revenue: integer() | nil,
          intended_use: String.t() | nil,
          previous_annual_revenue: integer() | nil,
          pricing_models: [String.t()] | nil,
          product_description: String.t() | nil,
          selling_categories: [String.t()] | nil,
          switching: boolean() | nil,
          switching_from: String.t() | nil
        }

  defstruct [
    :about,
    :customer_acquisition,
    :future_annual_revenue,
    :intended_use,
    :previous_annual_revenue,
    :pricing_models,
    :product_description,
    :selling_categories,
    :switching,
    :switching_from
  ]

  @schema_name "OrganizationDetails"
  def schema_name, do: @schema_name
end
