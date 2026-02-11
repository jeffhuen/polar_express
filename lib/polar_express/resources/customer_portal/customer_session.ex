# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.CustomerSession do
  @moduledoc """
  Customer-session

  CustomerSession API operations.
  """

  @typedoc """
  * `expires_at` - Format: date-time.
  * `return_url`
  """
  @type t :: %__MODULE__{
          expires_at: String.t() | nil,
          return_url: map() | nil
        }

  defstruct [:expires_at, :return_url]

  @object_name "customer-session"
  def object_name, do: @object_name
end
