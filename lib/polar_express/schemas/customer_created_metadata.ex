# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerCreatedMetadata do
  @moduledoc """
  CustomerCreatedMetadata
  """

  @typedoc """
  * `customer_email` - Nullable.
  * `customer_external_id` - Nullable.
  * `customer_id`
  * `customer_name` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:customer_email, :customer_external_id, :customer_id, :customer_name]

  @schema_name "CustomerCreatedMetadata"
  def schema_name, do: @schema_name
end
