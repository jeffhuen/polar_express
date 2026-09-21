# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationRecordSummary do
  @moduledoc """
  MerchantMigrationRecordSummary

  Every count the review UI needs, from one classification pass.
  """

  @typedoc """
  * `action_required` - How many records the pre-check flagged for the merchant to fix, across entities. Classification only, so a flagged record that has since been imported still counts.
  * `entities` - Per-entity counts, for the listable entities only.
  """
  @type t :: %__MODULE__{}

  defstruct [:action_required, :entities]

  @schema_name "MerchantMigrationRecordSummary"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "entities" => PolarExpress.Schemas.MerchantMigrationRecordSummaryEntity
    }
  end
end
