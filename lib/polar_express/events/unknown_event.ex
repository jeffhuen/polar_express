# File generated from our OpenAPI spec
defmodule PolarExpress.Events.UnknownEvent do
  @moduledoc "Fallback for unrecognized webhook events."

  @typedoc """
  * `type` - The unrecognized event type string.
  * `data` - Raw event payload as a map.
  * `timestamp` - ISO 8601 timestamp of when the event occurred.
  """
  @type t :: %__MODULE__{
          type: String.t(),
          data: map(),
          timestamp: String.t()
        }

  defstruct [:type, :data, :timestamp]
end
