# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Wallet_ do
  @moduledoc """
  ListResource[Wallet]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_Wallet_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Wallet,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
