# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitMeterCreditPublic do
  @moduledoc """
  BenefitMeterCreditPublic

  A benefit of type `meter_credit`.

  Grants a number of units on a specific meter.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `deletable` - Whether the benefit is deletable.
  * `description` - The description of the benefit.
  * `id` - The ID of the benefit. Format: uuid4.
  * `is_deleted` - Whether the benefit is deleted.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - The ID of the organization owning the benefit. Format: uuid4.
  * `properties`
  * `selectable` - Whether the benefit is selectable when creating a product.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [
    :created_at,
    :deletable,
    :description,
    :id,
    :is_deleted,
    :modified_at,
    :organization_id,
    :properties,
    :selectable,
    :type
  ]

  @schema_name "BenefitMeterCreditPublic"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "properties" => PolarExpress.Schemas.BenefitMeterCreditPublicProperties
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
