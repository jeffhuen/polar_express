# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomersDeleteCustomerParams do
  @moduledoc "Parameters for customers delete customer."

  @typedoc """
  * `anonymize` - If true, also anonymize the customer's personal data for GDPR compliance. This replaces email with a hashed version, hashes name and billing name (name preserved for businesses with tax_id), clears billing address, and removes OAuth account data.
  """
  @type t :: %__MODULE__{
          anonymize: boolean() | nil
        }

  defstruct [:anonymize]
end
