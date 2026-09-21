# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_NotificationRecipientSchema_ do
  @moduledoc """
  ListResource[NotificationRecipientSchema]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @schema_name "ListResource_NotificationRecipientSchema_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.NotificationRecipientSchema,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
