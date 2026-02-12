# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomFieldCreate do
  @moduledoc "CustomFieldCreate union type."

  @type t ::
          PolarExpress.Schemas.CustomFieldCreateText.t()
          | PolarExpress.Schemas.CustomFieldCreateNumber.t()
          | PolarExpress.Schemas.CustomFieldCreateDate.t()
          | PolarExpress.Schemas.CustomFieldCreateCheckbox.t()
          | PolarExpress.Schemas.CustomFieldCreateSelect.t()

  @schema_name "CustomFieldCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomFieldCreateText,
      PolarExpress.Schemas.CustomFieldCreateNumber,
      PolarExpress.Schemas.CustomFieldCreateDate,
      PolarExpress.Schemas.CustomFieldCreateCheckbox,
      PolarExpress.Schemas.CustomFieldCreateSelect
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "checkbox" => PolarExpress.Schemas.CustomFieldCreateCheckbox,
       "date" => PolarExpress.Schemas.CustomFieldCreateDate,
       "number" => PolarExpress.Schemas.CustomFieldCreateNumber,
       "select" => PolarExpress.Schemas.CustomFieldCreateSelect,
       "text" => PolarExpress.Schemas.CustomFieldCreateText
     }}
  end
end
