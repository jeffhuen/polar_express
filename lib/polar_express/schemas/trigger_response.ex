# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TriggerResponse do
  @moduledoc """
  TriggerResponse
  """

  @typedoc """
  * `delivered`
  * `event`
  * `payload`
  * `webhook_event_id` - Format: uuid.
  """
  @type t :: %__MODULE__{}

  defstruct [:delivered, :event, :payload, :webhook_event_id]

  @schema_name "TriggerResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "event" => PolarExpress.Schemas.WebhookEventType
    }
  end
end
