# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomersExportCustomersParams do
  @moduledoc "Parameters for customers export customers."

  @typedoc """
  * `organization_id` - Filter by organization ID.
  """
  @type t :: %__MODULE__{
          organization_id: map() | nil
        }

  defstruct [:organization_id]
end
