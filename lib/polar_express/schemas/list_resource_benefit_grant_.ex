# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_BenefitGrant_ do
  @moduledoc """
  ListResource[BenefitGrant]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.BenefitGrant.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_BenefitGrant_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.BenefitGrant,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
