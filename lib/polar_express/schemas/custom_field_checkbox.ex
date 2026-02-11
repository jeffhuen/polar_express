# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldCheckbox do
  @moduledoc """
  CustomFieldCheckbox

  Schema for a custom field of type checkbox.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name` - Name of the custom field.
  * `organization_id` - The ID of the organization owning the custom field. Format: uuid4.
  * `properties`
  * `slug` - Identifier of the custom field. It'll be used as key when storing the value.
  * `type`
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          id: String.t() | nil,
          metadata: map() | nil,
          modified_at: DateTime.t() | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          properties: PolarExpress.Schemas.CustomFieldCheckboxProperties.t() | nil,
          slug: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :created_at,
    :id,
    :metadata,
    :modified_at,
    :name,
    :organization_id,
    :properties,
    :slug,
    :type
  ]

  @schema_name "CustomFieldCheckbox"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "properties" => PolarExpress.Schemas.CustomFieldCheckboxProperties
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
