# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerEmailUpdateRequest do
  @moduledoc """
  CustomerEmailUpdateRequest
  """

  @typedoc """
  * `email` - Format: email.
  """
  @type t :: %__MODULE__{
          email: String.t() | nil
        }

  defstruct [:email]

  @schema_name "CustomerEmailUpdateRequest"
  def schema_name, do: @schema_name
end
