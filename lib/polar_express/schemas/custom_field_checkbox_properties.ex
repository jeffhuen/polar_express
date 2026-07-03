# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldCheckboxProperties do
  @moduledoc """
  CustomFieldCheckboxProperties
  """

  @typedoc """
  * `form_help_text`
  * `form_label`
  * `form_placeholder`
  """
  @type t :: %__MODULE__{}

  defstruct [:form_help_text, :form_label, :form_placeholder]

  @schema_name "CustomFieldCheckboxProperties"
  def schema_name, do: @schema_name
end
