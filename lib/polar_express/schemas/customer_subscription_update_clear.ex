# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionUpdateClear do
  @moduledoc """
  CustomerSubscriptionUpdateClear
  """

  @typedoc """
  * `pending_update` - Clear the pending subscription update.
  """
  @type t :: %__MODULE__{
          pending_update: term()
        }

  defstruct [:pending_update]

  @schema_name "CustomerSubscriptionUpdateClear"
  def schema_name, do: @schema_name
end
