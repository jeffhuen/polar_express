# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_OAuth2Client_ do
  @moduledoc """
  ListResource[OAuth2Client]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_OAuth2Client_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.OAuth2Client,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
