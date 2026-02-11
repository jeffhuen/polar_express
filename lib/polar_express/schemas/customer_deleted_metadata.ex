# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerDeletedMetadata do
  @moduledoc """
  CustomerDeletedMetadata
  """

  @typedoc """
  * `customer_email`
  * `customer_external_id` - Nullable.
  * `customer_id`
  * `customer_name` - Nullable.
  """
  @type t :: %__MODULE__{
          customer_email: String.t() | nil,
          customer_external_id: String.t() | nil,
          customer_id: String.t() | nil,
          customer_name: String.t() | nil
        }

  defstruct [:customer_email, :customer_external_id, :customer_id, :customer_name]

  @schema_name "CustomerDeletedMetadata"
  def schema_name, do: @schema_name
end
