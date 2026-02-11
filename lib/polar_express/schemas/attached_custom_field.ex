# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AttachedCustomField do
  @moduledoc """
  AttachedCustomField

  Schema of a custom field attached to a resource.
  """

  @typedoc """
  * `custom_field`
  * `custom_field_id` - ID of the custom field. Format: uuid4.
  * `order` - Order of the custom field in the resource.
  * `required` - Whether the value is required for this custom field.
  """
  @type t :: %__MODULE__{
          custom_field: PolarExpress.Schemas.CustomField.t() | nil,
          custom_field_id: String.t() | nil,
          order: integer() | nil,
          required: boolean() | nil
        }

  defstruct [:custom_field, :custom_field_id, :order, :required]

  @schema_name "AttachedCustomField"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "custom_field" => PolarExpress.Schemas.CustomField
    }
  end
end
