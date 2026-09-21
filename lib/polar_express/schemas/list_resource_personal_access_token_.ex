# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_PersonalAccessToken_ do
  @moduledoc """
  ListResource[PersonalAccessToken]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_PersonalAccessToken_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.PersonalAccessToken,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
