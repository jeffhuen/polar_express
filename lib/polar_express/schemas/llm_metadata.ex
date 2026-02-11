# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LLMMetadata do
  @moduledoc """
  LLMMetadata
  """

  @typedoc """
  * `cached_input_tokens` - The number of LLM cached tokens that were used for the event.
  * `input_tokens` - The number of LLM input tokens used for the event.
  * `model` - The model used for the event.
  * `output_tokens` - The number of LLM output tokens used for the event.
  * `prompt` - The LLM prompt used for the event. Nullable.
  * `response` - The LLM response used for the event. Nullable.
  * `total_tokens` - The total number of LLM tokens used for the event.
  * `vendor` - The vendor of the event.
  """
  @type t :: %__MODULE__{
          cached_input_tokens: integer() | nil,
          input_tokens: integer() | nil,
          model: String.t() | nil,
          output_tokens: integer() | nil,
          prompt: String.t() | nil,
          response: String.t() | nil,
          total_tokens: integer() | nil,
          vendor: String.t() | nil
        }

  defstruct [
    :cached_input_tokens,
    :input_tokens,
    :model,
    :output_tokens,
    :prompt,
    :response,
    :total_tokens,
    :vendor
  ]

  @schema_name "LLMMetadata"
  def schema_name, do: @schema_name
end
