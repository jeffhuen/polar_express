# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationImportRequest do
  @moduledoc """
  MerchantMigrationImportRequest
  """

  @typedoc """
  * `exclude_record_ids` - Prepare every importable subscription except these — the opt-out selection for large catalogs. Ignored when `record_ids` is set. Nullable.
  * `record_ids` - Subscription ledger record ids to prepare (from the records listing). Their customers and products are imported automatically. When omitted, every importable subscription is prepared (subject to `exclude_record_ids`). Polar subscriptions are created at cutover. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:exclude_record_ids, :record_ids]

  @schema_name "MerchantMigrationImportRequest"
  def schema_name, do: @schema_name
end
