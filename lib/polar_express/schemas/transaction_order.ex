# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionOrder do
  @moduledoc """
  TransactionOrder
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `product` - Nullable.
  * `subscription_id` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :modified_at, :product, :subscription_id]

  @schema_name "TransactionOrder"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "product" => PolarExpress.Schemas.TransactionProduct
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
