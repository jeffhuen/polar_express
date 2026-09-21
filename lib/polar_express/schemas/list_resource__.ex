# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource__ do
  @moduledoc """
  ListResource[]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource__"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" =>
        {:union, :variants,
         [
           PolarExpress.Schemas.OrganizationPaymentMethodCard,
           PolarExpress.Schemas.OrganizationPaymentMethodGeneric
         ]},
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
