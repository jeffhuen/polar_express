# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AlreadyCanceledSubscription do
  @moduledoc """
  AlreadyCanceledSubscription
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

  @schema_name "AlreadyCanceledSubscription"
  def schema_name, do: @schema_name
end
