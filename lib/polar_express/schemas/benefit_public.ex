# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitPublic do
  @moduledoc """
  BenefitPublic
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `deletable` - Whether the benefit is deletable.
  * `description` - The description of the benefit.
  * `id` - The ID of the benefit. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - The ID of the organization owning the benefit. Format: uuid4.
  * `selectable` - Whether the benefit is selectable when creating a product.
  * `type` - The type of the benefit.
  """
  @type t :: %__MODULE__{
          created_at: DateTime.t() | nil,
          deletable: boolean() | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          modified_at: DateTime.t() | nil,
          organization_id: String.t() | nil,
          selectable: boolean() | nil,
          type: PolarExpress.Schemas.BenefitType.t() | nil
        }

  defstruct [
    :created_at,
    :deletable,
    :description,
    :id,
    :modified_at,
    :organization_id,
    :selectable,
    :type
  ]

  @schema_name "BenefitPublic"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "type" => PolarExpress.Schemas.BenefitType
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
