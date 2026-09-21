# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_MerchantMigrationRecordItem_ do
  @moduledoc """
  ListResource[MerchantMigrationRecordItem]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_MerchantMigrationRecordItem_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.MerchantMigrationRecordItem,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
