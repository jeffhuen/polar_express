# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomersDeleteCustomerByExternalIdParams do
  @moduledoc "Parameters for customers delete customer by external id."

  @typedoc """
  * `anonymize` - If true, also anonymize the customer's personal data for GDPR compliance.
  """
  @type t :: %__MODULE__{
          anonymize: boolean() | nil
        }

  defstruct [:anonymize]
end
