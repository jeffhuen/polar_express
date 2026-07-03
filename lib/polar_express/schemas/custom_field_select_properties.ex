# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldSelectProperties do
  @moduledoc """
  CustomFieldSelectProperties
  """

  @typedoc """
  * `form_help_text`
  * `form_label`
  * `form_placeholder`
  * `options`
  """
  @type t :: %__MODULE__{}

  defstruct [:form_help_text, :form_label, :form_placeholder, :options]

  @schema_name "CustomFieldSelectProperties"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "options" => PolarExpress.Schemas.CustomFieldSelectOption
    }
  end
end
