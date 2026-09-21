# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationImportReport do
  @moduledoc """
  MerchantMigrationImportReport
  """

  @typedoc """
  * `results` - Per-entity counts of what was imported vs skipped.
  * `step` - The migration step after the import.
  """
  @type t :: %__MODULE__{}

  defstruct [:results, :step]

  @schema_name "MerchantMigrationImportReport"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "results" => PolarExpress.Schemas.MerchantMigrationImportResult,
      "step" => PolarExpress.Schemas.MerchantMigrationStep
    }
  end
end
