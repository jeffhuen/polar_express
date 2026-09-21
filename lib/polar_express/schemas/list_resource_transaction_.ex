# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Transaction_ do
  @moduledoc """
  ListResource[Transaction]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_Transaction_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Transaction,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
