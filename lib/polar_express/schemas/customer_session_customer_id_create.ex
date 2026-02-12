# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSessionCustomerIDCreate do
  @moduledoc """
  CustomerSessionCustomerIDCreate

  Schema for creating a customer session using a customer ID.
  """

  @typedoc """
  * `customer_id` - ID of the customer to create a session for. Format: uuid4.
  * `return_url` - When set, a back button will be shown in the customer portal to return to this URL. Nullable.
  """
  @type t :: %__MODULE__{
          customer_id: String.t() | nil,
          return_url: String.t() | nil
        }

  defstruct [:customer_id, :return_url]

  @schema_name "CustomerSessionCustomerIDCreate"
  def schema_name, do: @schema_name
end
