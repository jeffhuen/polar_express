# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldUpdateText do
  @moduledoc """
  CustomFieldUpdateText

  Schema to update a custom field of type text.
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
  * `name` - Nullable.
  * `properties` - Nullable.
  * `slug` - Nullable.
  * `type`
  """
  @type t :: %__MODULE__{
          metadata: %{String.t() => String.t() | integer() | float() | boolean() | nil} | nil,
          name: String.t() | nil,
          properties: PolarExpress.Schemas.CustomFieldTextProperties.t() | nil,
          slug: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:metadata, :name, :properties, :slug, :type]

  @schema_name "CustomFieldUpdateText"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "properties" => PolarExpress.Schemas.CustomFieldTextProperties
    }
  end
end
