# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_OrganizationBenefitGrant_ do
  @moduledoc """
  ListResource[OrganizationBenefitGrant]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_OrganizationBenefitGrant_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.OrganizationBenefitGrant,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
