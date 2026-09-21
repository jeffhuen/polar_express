# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_MerchantMigration_ do
  @moduledoc """
  ListResource[MerchantMigration]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_MerchantMigration_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.MerchantMigration,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
