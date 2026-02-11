# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerCustomerSession do
  @moduledoc """
  CustomerCustomerSession
  """

  @typedoc """
  * `expires_at` - Format: date-time.
  * `return_url` - Nullable.
  """
  @type t :: %__MODULE__{
          expires_at: DateTime.t() | nil,
          return_url: String.t() | nil
        }

  defstruct [:expires_at, :return_url]

  @schema_name "CustomerCustomerSession"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:expires_at]
end
