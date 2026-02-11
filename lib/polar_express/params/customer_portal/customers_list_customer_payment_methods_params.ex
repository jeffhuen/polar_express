# File generated from our OpenAPI spec
defmodule PolarExpress.Params.CustomerPortal.CustomersListCustomerPaymentMethodsParams do
  @moduledoc "Parameters for customers list customer payment methods."

  @typedoc """
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `page` - Page number, defaults to 1.
  """
  @type t :: %__MODULE__{
          limit: integer() | nil,
          page: integer() | nil
        }

  defstruct [:limit, :page]
end
