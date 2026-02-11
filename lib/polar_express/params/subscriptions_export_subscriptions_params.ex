# File generated from our OpenAPI spec
defmodule PolarExpress.Params.SubscriptionsExportSubscriptionsParams do
  @moduledoc "Parameters for subscriptions export subscriptions."

  @typedoc """
  * `organization_id` - Filter by organization ID.
  """
  @type t :: %__MODULE__{
          organization_id: map() | nil
        }

  defstruct [:organization_id]
end
