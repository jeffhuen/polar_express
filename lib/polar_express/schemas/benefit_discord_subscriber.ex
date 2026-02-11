# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitDiscordSubscriber do
  @moduledoc """
  BenefitDiscordSubscriber
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `deletable` - Whether the benefit is deletable.
  * `description` - The description of the benefit.
  * `id` - The ID of the benefit. Format: uuid4.
  * `metadata`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization`
  * `organization_id` - The ID of the organization owning the benefit. Format: uuid4.
  * `properties`
  * `selectable` - Whether the benefit is selectable when creating a product.
  * `type`
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          deletable: boolean() | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          metadata: map() | nil,
          modified_at: DateTime.t() | nil,
          organization: PolarExpress.Schemas.BenefitSubscriberOrganization.t() | nil,
          organization_id: String.t() | nil,
          properties: PolarExpress.Schemas.BenefitDiscordSubscriberProperties.t() | nil,
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
    :organization,
    :organization_id,
    :properties,
    :selectable,
    :type
  ]

  @schema_name "BenefitDiscordSubscriber"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "organization" => PolarExpress.Schemas.BenefitSubscriberOrganization,
      "properties" => PolarExpress.Schemas.BenefitDiscordSubscriberProperties
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
