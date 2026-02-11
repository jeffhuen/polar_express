# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldTextProperties do
  @moduledoc """
  CustomFieldTextProperties
  """

  @typedoc """
  * `form_help_text`
  * `form_label`
  * `form_placeholder`
  * `max_length`
  * `min_length`
  * `textarea`
  """
  @type t :: %__MODULE__{
          form_help_text: String.t() | nil,
          form_label: String.t() | nil,
          form_placeholder: String.t() | nil,
          max_length: integer() | nil,
          min_length: integer() | nil,
          textarea: boolean() | nil
        }

  defstruct [:form_help_text, :form_label, :form_placeholder, :max_length, :min_length, :textarea]

  @schema_name "CustomFieldTextProperties"
  def schema_name, do: @schema_name
end
