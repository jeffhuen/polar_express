# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationPlan do
  @moduledoc """
  OrganizationPlan
  """

  @typedoc """
  * `custom`
  * `description` - Nullable.
  * `features`
  * `highlight`
  * `name`
  * `price` - Nullable.
  * `product_id` - Polar product ID. Null for the synthesized free plan, which has no underlying Polar product. Nullable.
  * `recurring_interval` - Nullable.
  * `transaction_fee` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :custom,
    :description,
    :features,
    :highlight,
    :name,
    :price,
    :product_id,
    :recurring_interval,
    :transaction_fee
  ]

  @schema_name "OrganizationPlan"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price" => PolarExpress.Schemas.OrganizationPlanPrice,
      "transaction_fee" => PolarExpress.Schemas.OrganizationPlanFee
    }
  end
end
