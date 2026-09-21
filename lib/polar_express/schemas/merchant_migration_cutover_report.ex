# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationCutoverReport do
  @moduledoc """
  MerchantMigrationCutoverReport

  Where the switch has got to, for the imported subscriptions.
  """

  @typedoc """
  * `completed` - Whether the last switch run has finished.
  * `failed` - Hit an unexpected error.
  * `moved` - Now billed by Polar.
  * `pending` - Not switched yet.
  * `running` - Whether a switch run is in progress.
  * `skipped` - Left on the source.
  * `started` - Whether the merchant has confirmed the switch.
  * `total` - Subscriptions whose customer and product are in Polar.
  """
  @type t :: %__MODULE__{}

  defstruct [:completed, :failed, :moved, :pending, :running, :skipped, :started, :total]

  @schema_name "MerchantMigrationCutoverReport"
  def schema_name, do: @schema_name
end
