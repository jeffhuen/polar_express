# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AttachedCustomFieldCreate do
  @moduledoc """
  AttachedCustomFieldCreate

  Schema to attach a custom field to a resource.
  """

  @typedoc """
  * `custom_field_id` - ID of the custom field to attach. Format: uuid4.
  * `required` - Whether the value is required for this custom field.
  """
  @type t :: %__MODULE__{
          custom_field_id: String.t() | nil,
          required: boolean() | nil
        }

  defstruct [:custom_field_id, :required]

  @schema_name "AttachedCustomFieldCreate"
  def schema_name, do: @schema_name
end
