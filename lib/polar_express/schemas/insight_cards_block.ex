# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.InsightCardsBlock do
  @moduledoc """
  InsightCardsBlock

  Compass insights, rendered with the same card as the feed.
  """

  @typedoc """
  * `insights`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:insights, :type]

  @schema_name "InsightCardsBlock"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "insights" => PolarExpress.Schemas.Insight
    }
  end
end
