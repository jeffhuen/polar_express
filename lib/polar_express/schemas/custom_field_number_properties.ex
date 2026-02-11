# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldNumberProperties do
  @moduledoc """
  CustomFieldNumberProperties
  """

  @typedoc """
  * `form_help_text`
  * `form_label`
  * `form_placeholder`
  * `ge`
  * `le`
  """
  @type t :: %__MODULE__{
          form_help_text: String.t() | nil,
          form_label: String.t() | nil,
          form_placeholder: String.t() | nil,
          ge: integer() | nil,
          le: integer() | nil
        }

  defstruct [:form_help_text, :form_label, :form_placeholder, :ge, :le]

  @schema_name "CustomFieldNumberProperties"
  def schema_name, do: @schema_name
end
