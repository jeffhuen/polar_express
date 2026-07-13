# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitSlackSharedChannel do
  @moduledoc """
  BenefitSlackSharedChannel
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `deletable` - Whether the benefit is deletable.
  * `description` - The description of the benefit.
  * `id` - The ID of the benefit. Format: uuid4.
  * `is_deleted` - Whether the benefit is deleted.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - The ID of the organization owning the benefit. Format: uuid4.
  * `properties`
  * `selectable` - Whether the benefit is selectable when creating a product.
  * `type`
  * `visibility` - The visibility of the benefit in the customer portal.
  * `visibility_configurable`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :created_at,
    :deletable,
    :description,
    :id,
    :is_deleted,
    :metadata,
    :modified_at,
    :organization_id,
    :properties,
    :selectable,
    :type,
    :visibility,
    :visibility_configurable
  ]

  @schema_name "BenefitSlackSharedChannel"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "metadata" => PolarExpress.Schemas.MetadataOutputType,
      "properties" => PolarExpress.Schemas.BenefitSlackSharedChannelProperties,
      "visibility" => PolarExpress.Schemas.BenefitVisibility
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
