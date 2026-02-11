# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomField do
  @moduledoc "CustomField union type."

  @type t ::
          PolarExpress.Schemas.CustomFieldText.t()
          | PolarExpress.Schemas.CustomFieldNumber.t()
          | PolarExpress.Schemas.CustomFieldDate.t()
          | PolarExpress.Schemas.CustomFieldCheckbox.t()
          | PolarExpress.Schemas.CustomFieldSelect.t()

  @schema_name "CustomField"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomFieldText,
      PolarExpress.Schemas.CustomFieldNumber,
      PolarExpress.Schemas.CustomFieldDate,
      PolarExpress.Schemas.CustomFieldCheckbox,
      PolarExpress.Schemas.CustomFieldSelect
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "checkbox" => PolarExpress.Schemas.CustomFieldCheckbox,
       "date" => PolarExpress.Schemas.CustomFieldDate,
       "number" => PolarExpress.Schemas.CustomFieldNumber,
       "select" => PolarExpress.Schemas.CustomFieldSelect,
       "text" => PolarExpress.Schemas.CustomFieldText
     }}
  end
end
