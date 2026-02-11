# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerUpdatedMetadata do
  @moduledoc """
  CustomerUpdatedMetadata
  """

  @typedoc """
  * `customer_email`
  * `customer_external_id` - Nullable.
  * `customer_id`
  * `customer_name` - Nullable.
  * `updated_fields`
  """
  @type t :: %__MODULE__{
          customer_email: String.t() | nil,
          customer_external_id: String.t() | nil,
          customer_id: String.t() | nil,
          customer_name: String.t() | nil,
          updated_fields: PolarExpress.Schemas.CustomerUpdatedFields.t() | nil
        }

  defstruct [
    :customer_email,
    :customer_external_id,
    :customer_id,
    :customer_name,
    :updated_fields
  ]

  @schema_name "CustomerUpdatedMetadata"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "updated_fields" => PolarExpress.Schemas.CustomerUpdatedFields
    }
  end
end
