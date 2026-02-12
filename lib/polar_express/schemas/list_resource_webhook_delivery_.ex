# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_WebhookDelivery_ do
  @moduledoc """
  ListResource[WebhookDelivery]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.WebhookDelivery.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_WebhookDelivery_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.WebhookDelivery,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
