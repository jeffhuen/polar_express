# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldSelectOption do
  @moduledoc """
  CustomFieldSelectOption
  """

  @typedoc """
  * `label`
  * `value`
  """
  @type t :: %__MODULE__{
          label: String.t() | nil,
          value: String.t() | nil
        }

  defstruct [:label, :value]

  @schema_name "CustomFieldSelectOption"
  def schema_name, do: @schema_name
end
