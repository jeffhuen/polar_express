# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerEmailUpdateVerifyRequest do
  @moduledoc """
  CustomerEmailUpdateVerifyRequest
  """

  @typedoc """
  * `token`
  """
  @type t :: %__MODULE__{
          token: String.t() | nil
        }

  defstruct [:token]

  @schema_name "CustomerEmailUpdateVerifyRequest"
  def schema_name, do: @schema_name
end
