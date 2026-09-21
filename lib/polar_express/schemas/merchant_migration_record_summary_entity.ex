# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationRecordSummaryEntity do
  @moduledoc """
  MerchantMigrationRecordSummaryEntity

  The pre-check's per-entity counts, plus where the ledger has got to.
  """

  @typedoc """
  * `action_required` - How many require merchant action before they can be prepared.
  * `entity` - The source entity type.
  * `importable` - How many will be imported into Polar.
  * `imported` - How many are already in Polar.
  * `ready` - How many subscriptions are prepared and ready to switch.
  * `selectable` - How many subscriptions an import would still prepare: importable by the pre-check, pending in the ledger, and not already backed by an imported customer and product. Zero for other entities.
  * `skipped` - How many won't be imported and stay on the source.
  * `total` - How many were read from the source.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :action_required,
    :entity,
    :importable,
    :imported,
    :ready,
    :selectable,
    :skipped,
    :total
  ]

  @schema_name "MerchantMigrationRecordSummaryEntity"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "entity" => PolarExpress.Schemas.PrecheckEntity
    }
  end
end
