# File generated from our OpenAPI spec
defmodule PolarExpress.Params.OrdersExportSubscriptionsParams do
  @moduledoc "Parameters for orders export subscriptions."

  @typedoc """
  * `organization_id` - Filter by organization ID.
  * `product_id` - Filter by product ID.
  """
  @type t :: %__MODULE__{
          organization_id: map() | nil,
          product_id: map() | nil
        }

  defstruct [:organization_id, :product_id]
end
