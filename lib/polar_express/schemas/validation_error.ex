# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ValidationError do
  @moduledoc """
  ValidationError
  """

  @typedoc """
  * `ctx`
  * `input`
  * `loc`
  * `msg`
  * `type`
  """
  @type t :: %__MODULE__{
          ctx: map() | nil,
          input: term(),
          loc: [String.t() | integer()] | nil,
          msg: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:ctx, :input, :loc, :msg, :type]

  @schema_name "ValidationError"
  def schema_name, do: @schema_name
end
