# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSubscriptionChangePreview do
  @moduledoc "CustomerSubscriptionChangePreview union type."

  @type t ::
          PolarExpress.Schemas.CustomerSubscriptionChangePreviewProduct.t()
          | PolarExpress.Schemas.CustomerSubscriptionChangePreviewSeats.t()
          | PolarExpress.Schemas.CustomerSubscriptionChangePreviewUnits.t()

  @schema_name "CustomerSubscriptionChangePreview"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.CustomerSubscriptionChangePreviewProduct,
      PolarExpress.Schemas.CustomerSubscriptionChangePreviewSeats,
      PolarExpress.Schemas.CustomerSubscriptionChangePreviewUnits
    ]
  end
end
