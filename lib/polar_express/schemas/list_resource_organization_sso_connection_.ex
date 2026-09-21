# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_OrganizationSSOConnection_ do
  @moduledoc """
  ListResource[OrganizationSSOConnection]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_OrganizationSSOConnection_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.OrganizationSSOConnection,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
