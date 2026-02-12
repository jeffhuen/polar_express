# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_CustomerSubscription_ do
  @moduledoc """
  ListResource[CustomerSubscription]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.CustomerSubscription.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_CustomerSubscription_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.CustomerSubscription,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
