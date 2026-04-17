# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerEmailUpdateVerifyResponse do
  @moduledoc """
  CustomerEmailUpdateVerifyResponse
  """

  @typedoc """
  * `token`
  """
  @type t :: %__MODULE__{
          token: String.t() | nil
        }

  defstruct [:token]

  @schema_name "CustomerEmailUpdateVerifyResponse"
  def schema_name, do: @schema_name
end
