# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_PayoutAccountWithOrganizations_ do
  @moduledoc """
  ListResource[PayoutAccountWithOrganizations]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_PayoutAccountWithOrganizations_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.PayoutAccountWithOrganizations,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
