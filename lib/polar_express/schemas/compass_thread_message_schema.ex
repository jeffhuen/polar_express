# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CompassThreadMessageSchema do
  @moduledoc """
  CompassThreadMessageSchema

  One completed turn: the user's prompt and the rendered answer.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `parts`
  * `prompt`
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :modified_at, :parts, :prompt]

  @schema_name "CompassThreadMessageSchema"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "parts" =>
        {:union, :discriminated, "kind",
         %{
           "block" => PolarExpress.Schemas.AssistantBlockPart,
           "text" => PolarExpress.Schemas.AssistantTextPart
         }}
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
