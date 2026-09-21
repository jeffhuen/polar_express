# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationCreate do
  @moduledoc """
  MerchantMigrationCreate
  """

  @typedoc """
  * `api_key` - A Stripe API key for the source account (a restricted `rk_...` key is recommended). It is validated for all required permissions before the migration is saved.
  * `organization_id` - The organization the migration belongs to. Format: uuid4.
  * `source_platform` - The provider to migrate the billing from.
  """
  @type t :: %__MODULE__{}

  defstruct [:api_key, :organization_id, :source_platform]

  @schema_name "MerchantMigrationCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "source_platform" => PolarExpress.Schemas.MerchantMigrationSourcePlatform
    }
  end
end
