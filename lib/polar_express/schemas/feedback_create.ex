# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.FeedbackCreate do
  @moduledoc """
  FeedbackCreate
  """

  @typedoc """
  * `client_context`
  * `message` - Max length: 5000.
  * `organization_id` - Format: uuid.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:client_context, :message, :organization_id, :type]

  @schema_name "FeedbackCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "type" => PolarExpress.Schemas.FeedbackType
    }
  end
end
