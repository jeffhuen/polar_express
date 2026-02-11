defmodule PolarExpress.Resources.Event do
  @moduledoc """
  Represents a Polar webhook event.

  Contains the event type, timestamp, and deserialized data payload.
  """

  @type t :: %__MODULE__{
          type: String.t() | nil,
          timestamp: String.t() | nil,
          data: map() | nil
        }

  defstruct [:type, :timestamp, :data]
end
