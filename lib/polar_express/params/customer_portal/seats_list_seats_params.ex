# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerPortal.SeatsListSeatsParams do
  @moduledoc "Parameters for seats list seats."

  @typedoc """
  * `order_id` - Order ID
  * `subscription_id` - Subscription ID
  """
  @type t :: %__MODULE__{
          order_id: String.t() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [:order_id, :subscription_id]
end
