# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TriggerRequest do
  @moduledoc """
  TriggerRequest
  """

  @typedoc """
  * `deliver` - Send the event to the organization's active CLI listener.
  * `event`
  * `overrides` - Payload fields to override, keyed by dotted path relative to the payload root, e.g. `data.amount`.
  * `seed` - Seed for generated IDs and numbers, for reproducible payloads. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:deliver, :event, :overrides, :seed]

  @schema_name "TriggerRequest"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "event" => PolarExpress.Schemas.WebhookEventType
    }
  end
end
