# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Insight do
  @moduledoc """
  Insight

  A computed, narrated reading of the business with a drill-down.
  """

  @typedoc """
  * `body`
  * `category`
  * `category_label` - Visible label next to the category dot.
  * `confidence`
  * `detector_id` - The detector that produced this insight.
  * `drivers` - Top contributors to the headline change.
  * `id` - Deterministic insight key (`detector_id:organization_id:period_bucket`). Stable across recomputes so dismissals and feedback re-attach.
  * `primary_action` - Nullable.
  * `severity` - How much the merchant should care; the feed sorts on this first.
  * `suggested_prompt` - A natural follow-up question this finding invites, offered to the merchant as a one-tap prompt for the assistant. None when the finding has no obvious next question. Nullable.
  * `title`
  * `why` - Explanation surfaced via the 'Why you're seeing this' link. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :body,
    :category,
    :category_label,
    :confidence,
    :detector_id,
    :drivers,
    :id,
    :primary_action,
    :severity,
    :suggested_prompt,
    :title,
    :why
  ]

  @schema_name "Insight"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "category" => PolarExpress.Schemas.InsightCategory,
      "confidence" => PolarExpress.Schemas.ConfidenceLevel,
      "drivers" => PolarExpress.Schemas.InsightDriver,
      "primary_action" =>
        {:union, :discriminated, "type",
         %{
           "add_currency" => PolarExpress.Schemas.AddCurrencyAction,
           "adjust_price" => PolarExpress.Schemas.AdjustPriceAction,
           "view_costs" => PolarExpress.Schemas.ViewCostsAction,
           "view_metric" => PolarExpress.Schemas.ViewMetricAction
         }},
      "severity" => PolarExpress.Schemas.InsightSeverity
    }
  end
end
