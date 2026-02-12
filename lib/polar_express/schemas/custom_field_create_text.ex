# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldCreateText do
  @moduledoc """
  CustomFieldCreateText

  Schema to create a custom field of type text.
  """

  @typedoc """
  * `metadata` - Key-value object allowing you to store additional information.

  The key must be a string with a maximum length of **40 characters**.
  The value must be either:

  * A string with a maximum length of **500 characters**
  * An integer
  * A floating-point number
  * A boolean

  You can store up to **50 key-value pairs**.
  * `name` - Name of the custom field.
  * `organization_id` - The ID of the organization owning the custom field. **Required unless you use an organization token.** Nullable.
  * `properties`
  * `slug` - Identifier of the custom field. It'll be used as key when storing the value. Must be unique across the organization.It can only contain ASCII letters, numbers and hyphens.
  * `type`
  """
  @type t :: %__MODULE__{
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          organization_id: String.t() | nil,
          properties: PolarExpress.Schemas.CustomFieldTextProperties.t() | nil,
          slug: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:metadata, :name, :organization_id, :properties, :slug, :type]

  @schema_name "CustomFieldCreateText"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "properties" => PolarExpress.Schemas.CustomFieldTextProperties
    }
  end
end
