# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Payment_ do
  @moduledoc """
  ListResource[Payment]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_Payment_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Payment,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
