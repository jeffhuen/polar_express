# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ListResource_Dispute_ do
  @moduledoc """
  ListResource[Dispute]
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{
          items: [PolarExpress.Schemas.Dispute.t()] | nil,
          pagination: PolarExpress.Schemas.Pagination.t() | nil
        }

  defstruct [:items, :pagination]

  @schema_name "ListResource_Dispute_"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "items" => PolarExpress.Schemas.Dispute,
      "pagination" => PolarExpress.Schemas.Pagination
    }
  end
end
