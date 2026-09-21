# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AssistantBlockPart do
  @moduledoc """
  AssistantBlockPart

  A renderable block, at the position the model placed it.
  """

  @typedoc """
  * `block`
  * `kind`
  """
  @type t :: %__MODULE__{}

  defstruct [:block, :kind]

  @schema_name "AssistantBlockPart"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "block" =>
        {:union, :discriminated, "type",
         %{
           "customer_card" => PolarExpress.Schemas.CustomerCardBlock,
           "data_table" => PolarExpress.Schemas.DataTableBlock,
           "entity_list" => PolarExpress.Schemas.EntityListBlock,
           "insight_cards" => PolarExpress.Schemas.InsightCardsBlock,
           "metric_chart" => PolarExpress.Schemas.MetricChartBlock,
           "text" => PolarExpress.Schemas.TextBlock
         }}
    }
  end
end
