# File generated from our OpenAPI spec
defmodule PolarExpress.Params.MembersDeleteMemberByExternalIdParams do
  @moduledoc "Parameters for members delete member by external id."

  @typedoc """
  * `customer_id` - The customer ID.
  * `external_customer_id` - The customer external ID.
  """
  @type t :: %__MODULE__{
          customer_id: String.t() | nil,
          external_customer_id: String.t() | nil
        }

  defstruct [:customer_id, :external_customer_id]
end
