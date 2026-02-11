# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.Filter do
  @moduledoc """
  Filter
  """

  @typedoc """
  * `clauses`
  * `conjunction`
  """
  @type t :: %__MODULE__{
          clauses:
            [PolarExpress.Schemas.FilterClause.t() | PolarExpress.Schemas.Filter.t()] | nil,
          conjunction: PolarExpress.Schemas.FilterConjunction.t() | nil
        }

  defstruct [:clauses, :conjunction]

  @schema_name "Filter"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "clauses" =>
        {:union, :variants, [PolarExpress.Schemas.FilterClause, PolarExpress.Schemas.Filter]},
      "conjunction" => PolarExpress.Schemas.FilterConjunction
    }
  end
end
