# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationCutoverRequest do
  @moduledoc """
  MerchantMigrationCutoverRequest
  """

  @typedoc """
  * `exclude_record_ids` - Switch every subscription whose customer and product are in Polar except these — the opt-out selection for large catalogs. Ignored when `record_ids` is set. Nullable.
  * `record_ids` - Subscription ledger record ids to switch (from the records listing). When omitted, every subscription whose customer and product are in Polar is switched (subject to `exclude_record_ids`). Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:exclude_record_ids, :record_ids]

  @schema_name "MerchantMigrationCutoverRequest"
  def schema_name, do: @schema_name
end
