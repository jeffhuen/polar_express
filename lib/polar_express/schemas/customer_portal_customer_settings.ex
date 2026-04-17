# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalCustomerSettings do
  @moduledoc """
  CustomerPortalCustomerSettings
  """

  @typedoc """
  * `allow_email_change`
  """
  @type t :: %__MODULE__{
          allow_email_change: boolean() | nil
        }

  defstruct [:allow_email_change]

  @schema_name "CustomerPortalCustomerSettings"
  def schema_name, do: @schema_name
end
