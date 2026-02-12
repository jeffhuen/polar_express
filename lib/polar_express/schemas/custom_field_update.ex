# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldUpdate do
  @moduledoc "CustomFieldUpdate union type."

  @type t ::
          PolarExpress.Schemas.CustomFieldUpdateText.t()
          | PolarExpress.Schemas.CustomFieldUpdateNumber.t()
          | PolarExpress.Schemas.CustomFieldUpdateDate.t()
          | PolarExpress.Schemas.CustomFieldUpdateCheckbox.t()
          | PolarExpress.Schemas.CustomFieldUpdateSelect.t()

  @schema_name "CustomFieldUpdate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomFieldUpdateText,
      PolarExpress.Schemas.CustomFieldUpdateNumber,
      PolarExpress.Schemas.CustomFieldUpdateDate,
      PolarExpress.Schemas.CustomFieldUpdateCheckbox,
      PolarExpress.Schemas.CustomFieldUpdateSelect
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "checkbox" => PolarExpress.Schemas.CustomFieldUpdateCheckbox,
       "date" => PolarExpress.Schemas.CustomFieldUpdateDate,
       "number" => PolarExpress.Schemas.CustomFieldUpdateNumber,
       "select" => PolarExpress.Schemas.CustomFieldUpdateSelect,
       "text" => PolarExpress.Schemas.CustomFieldUpdateText
     }}
  end
end
