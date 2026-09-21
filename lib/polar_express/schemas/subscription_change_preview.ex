# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SubscriptionChangePreview do
  @moduledoc "SubscriptionChangePreview union type."

  @type t ::
          PolarExpress.Schemas.SubscriptionChangePreviewProduct.t()
          | PolarExpress.Schemas.SubscriptionChangePreviewSeats.t()
          | PolarExpress.Schemas.SubscriptionChangePreviewUnits.t()

  @schema_name "SubscriptionChangePreview"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.SubscriptionChangePreviewProduct,
      PolarExpress.Schemas.SubscriptionChangePreviewSeats,
      PolarExpress.Schemas.SubscriptionChangePreviewUnits
    ]
  end
end
