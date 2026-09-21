# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationImportResult do
  @moduledoc """
  MerchantMigrationImportResult
  """

  @typedoc """
  * `entity` - The source entity type.
  * `imported` - How many were created or reused in Polar.
  * `skipped` - How many were left on the source (not importable).
  """
  @type t :: %__MODULE__{}

  defstruct [:entity, :imported, :skipped]

  @schema_name "MerchantMigrationImportResult"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "entity" => PolarExpress.Schemas.PrecheckEntity
    }
  end
end
