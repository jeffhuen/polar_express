# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionUpdateClear do
  @moduledoc """
  SubscriptionUpdateClear
  """

  @typedoc """
  * `pending_update` - Clear the pending subscription update. Set to null to remove scheduled changes.
  """
  @type t :: %__MODULE__{
          pending_update: term()
        }

  defstruct [:pending_update]

  @schema_name "SubscriptionUpdateClear"
  def schema_name, do: @schema_name
end
