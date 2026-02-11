# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalUsageSettings do
  @moduledoc """
  CustomerPortalUsageSettings
  """

  @typedoc """
  * `show`
  """
  @type t :: %__MODULE__{
          show: boolean() | nil
        }

  defstruct [:show]

  @schema_name "CustomerPortalUsageSettings"
  def schema_name, do: @schema_name
end
