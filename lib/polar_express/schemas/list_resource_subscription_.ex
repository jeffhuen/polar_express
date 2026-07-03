# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Subscription_ do
  @moduledoc """
  ListResource[Subscription]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_Subscription_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Subscription,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
