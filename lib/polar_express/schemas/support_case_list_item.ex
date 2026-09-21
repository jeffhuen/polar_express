# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseListItem do
  @moduledoc "SupportCaseListItem union type."

  @type t ::
          PolarExpress.Schemas.DisputeSupportCaseListItem.t()
          | PolarExpress.Schemas.ReviewAppealSupportCaseListItem.t()

  @schema_name "SupportCaseListItem"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.DisputeSupportCaseListItem,
      PolarExpress.Schemas.ReviewAppealSupportCaseListItem
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "dispute" => PolarExpress.Schemas.DisputeSupportCaseListItem,
       "review_appeal" => PolarExpress.Schemas.ReviewAppealSupportCaseListItem
     }}
  end
end
