# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventMetadataOutput do
  @moduledoc """
  EventMetadataOutput
  """

  @typedoc """
  * `_cost`
  * `_llm`
  """
  @type t :: %__MODULE__{
          _cost: PolarExpress.Schemas.CostMetadataOutput.t() | nil,
          _llm: PolarExpress.Schemas.LLMMetadata.t() | nil
        }

  defstruct [:_cost, :_llm]

  @schema_name "EventMetadataOutput"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "_cost" => PolarExpress.Schemas.CostMetadataOutput,
      "_llm" => PolarExpress.Schemas.LLMMetadata
    }
  end
end
