# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Benefits do
  @moduledoc """
  Benefits

  Benefits API operations.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `deletable` - Whether the benefit is deletable.
  * `description` - The description of the benefit.
  * `id` - The ID of the benefit. Format: uuid4.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object.
  * `organization_id` - The ID of the organization owning the benefit. Format: uuid4.
  * `properties`
  * `selectable` - Whether the benefit is selectable when creating a product.
  * `type`
  """
  @type t :: %__MODULE__{
          created_at: String.t() | nil,
          deletable: boolean() | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          metadata: map() | nil,
          modified_at: map() | nil,
          organization_id: String.t() | nil,
          properties: map() | nil,
          selectable: boolean() | nil,
          type: String.t() | nil
        }

  defstruct [
    :created_at,
    :deletable,
    :description,
    :id,
    :metadata,
    :modified_at,
    :organization_id,
    :properties,
    :selectable,
    :type
  ]

  @object_name "benefits"
  def object_name, do: @object_name
end
