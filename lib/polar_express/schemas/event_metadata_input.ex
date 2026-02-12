# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.EventMetadataInput do
  @moduledoc """
  EventMetadataInput
  """

  @typedoc """
  * `_cost`
  * `_llm`
  """
  @type t :: %__MODULE__{
          _cost: PolarExpress.Schemas.CostMetadataInput.t() | nil,
          _llm: PolarExpress.Schemas.LLMMetadata.t() | nil
        }

  defstruct [:_cost, :_llm]

  @schema_name "EventMetadataInput"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "_cost" => PolarExpress.Schemas.CostMetadataInput,
      "_llm" => PolarExpress.Schemas.LLMMetadata
    }
  end
end
