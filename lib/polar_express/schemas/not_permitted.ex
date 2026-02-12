# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.NotPermitted do
  @moduledoc """
  NotPermitted
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{
          detail: String.t() | nil,
          error: String.t() | nil
        }

  defstruct [:detail, :error]

  @schema_name "NotPermitted"
  def schema_name, do: @schema_name
end
