# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSessionCustomerExternalIDCreate do
  @moduledoc """
  CustomerSessionCustomerExternalIDCreate

  Schema for creating a customer session using an external customer ID.
  """

  @typedoc """
  * `external_customer_id` - External ID of the customer to create a session for.
  * `return_url` - When set, a back button will be shown in the customer portal to return to this URL. Nullable.
  """
  @type t :: %__MODULE__{
          external_customer_id: String.t() | nil,
          return_url: String.t() | nil
        }

  defstruct [:external_customer_id, :return_url]

  @schema_name "CustomerSessionCustomerExternalIDCreate"
  def schema_name, do: @schema_name
end
