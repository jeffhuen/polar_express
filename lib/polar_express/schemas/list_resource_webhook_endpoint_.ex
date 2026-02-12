# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_WebhookEndpoint_ do
  @moduledoc """
  ListResource[WebhookEndpoint]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.WebhookEndpoint.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_WebhookEndpoint_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.WebhookEndpoint,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
