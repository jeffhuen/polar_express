# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigration do
  @moduledoc """
  MerchantMigration
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `operation` - Background work for the current step, if any. None until a run starts. Nullable.
  * `organization_id` - Format: uuid4.
  * `source` - Non-secret metadata about the connected source. The shape varies by provider (e.g. Stripe exposes `stripe_user_id`, `livemode`). Nullable.
  * `source_connected` - Whether the source provider has been connected.
  * `source_platform` - The provider the billing is being migrated from.
  * `step` - The current step of the migration.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :created_at,
    :id,
    :modified_at,
    :operation,
    :organization_id,
    :source,
    :source_connected,
    :source_platform,
    :step
  ]

  @schema_name "MerchantMigration"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "operation" => PolarExpress.Schemas.MerchantMigrationOperation,
      "source_platform" => PolarExpress.Schemas.MerchantMigrationSourcePlatform,
      "step" => PolarExpress.Schemas.MerchantMigrationStep
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
