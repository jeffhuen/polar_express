# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SearchResults do
  @moduledoc """
  SearchResults
  """

  @typedoc """
  * `results`
  """
  @type t :: %__MODULE__{}

  defstruct [:results]

  @schema_name "SearchResults"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "results" =>
        {:union, :discriminated, "type",
         %{
           "customer" => PolarExpress.Schemas.SearchResultCustomer,
           "order" => PolarExpress.Schemas.SearchResultOrder,
           "product" => PolarExpress.Schemas.SearchResultProduct,
           "subscription" => PolarExpress.Schemas.SearchResultSubscription
         }}
    }
  end
end
