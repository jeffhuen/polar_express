# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.HTTPValidationError do
  @moduledoc """
  HTTPValidationError
  """

  @typedoc """
  * `detail`
  """
  @type t :: %__MODULE__{
          detail: [PolarExpress.Schemas.ValidationError.t()] | nil
        }

  defstruct [:detail]

  @schema_name "HTTPValidationError"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "detail" => PolarExpress.Schemas.ValidationError
    }
  end
end
