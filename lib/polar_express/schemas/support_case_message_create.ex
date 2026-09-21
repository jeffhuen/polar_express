# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseMessageCreate do
  @moduledoc "SupportCaseMessageCreate union type."

  @type t ::
          PolarExpress.Schemas.ReviewAppealSupportCaseMessageCreate.t()
          | PolarExpress.Schemas.DisputeSupportCaseMessageCreate.t()

  @schema_name "SupportCaseMessageCreate"
  def schema_name, do: @schema_name

  def __variants__ do
    [
      PolarExpress.Schemas.ReviewAppealSupportCaseMessageCreate,
      PolarExpress.Schemas.DisputeSupportCaseMessageCreate
    ]
  end

  def __discriminator__ do
    {"type",
     %{
       "dispute" => PolarExpress.Schemas.DisputeSupportCaseMessageCreate,
       "review_appeal" => PolarExpress.Schemas.ReviewAppealSupportCaseMessageCreate
     }}
  end
end
