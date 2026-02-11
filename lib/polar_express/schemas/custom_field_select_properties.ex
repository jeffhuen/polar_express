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
  @type t :: %__MODULE__{
          form_help_text: String.t() | nil,
          form_label: String.t() | nil,
          form_placeholder: String.t() | nil,
          options: [PolarExpress.Schemas.CustomFieldSelectOption.t()] | nil
        }

  defstruct [:form_help_text, :form_label, :form_placeholder, :options]

  @schema_name "CustomFieldSelectProperties"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "options" => PolarExpress.Schemas.CustomFieldSelectOption
    }
  end
end
