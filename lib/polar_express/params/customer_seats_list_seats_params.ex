# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerSeatsListSeatsParams do
  @moduledoc "Parameters for customer seats list seats."

  @typedoc """
  * `order_id`
  * `subscription_id`
  """
  @type t :: %__MODULE__{
          order_id: String.t() | nil,
          subscription_id: String.t() | nil
        }

  defstruct [:order_id, :subscription_id]
end
