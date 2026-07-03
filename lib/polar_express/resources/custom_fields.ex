# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomFields do
  @moduledoc """
  Custom-fields

  CustomFields API operations.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `name` - Name of the custom field.
  * `organization_id` - The ID of the organization owning the custom field. Format: uuid4.
  * `properties`
  * `slug` - Identifier of the custom field. It'll be used as key when storing the value.
  * `type`
  """
  @type t :: %__MODULE__{}

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

  @object_name "custom-fields"
  def object_name, do: @object_name
end
