# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerOrganizationData do
  @moduledoc """
  CustomerOrganizationData

  Schema of an organization and related data for customer portal.
  """

  @typedoc """
  * `organization`
  * `products`
  """
  @type t :: %__MODULE__{
          organization: PolarExpress.Schemas.CustomerOrganization.t() | nil,
          products: [PolarExpress.Schemas.CustomerProduct.t()] | nil
        }

  defstruct [:organization, :products]

  @schema_name "CustomerOrganizationData"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "organization" => PolarExpress.Schemas.CustomerOrganization,
      "products" => PolarExpress.Schemas.CustomerProduct
    }
  end
end
