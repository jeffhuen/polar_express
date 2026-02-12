# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CustomerBenefitGrant_ do
  @moduledoc """
  ListResource[CustomerBenefitGrant]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.CustomerBenefitGrant.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_CustomerBenefitGrant_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomerBenefitGrant,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
