# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TriggerEvent do
  @moduledoc """
  TriggerEvent
  """

  @typedoc """
  * `description` - One-line description of when Polar sends this event.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:description, :type]

  @schema_name "TriggerEvent"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "type" => PolarExpress.Schemas.WebhookEventType
    }
  end
end
