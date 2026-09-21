# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ReviewAppealSupportCaseMessageCreate do
  @moduledoc """
  ReviewAppealSupportCaseMessageCreate

  A reply on a review-appeal case.
  """

  @typedoc """
  * `body` - Nullable.
  * `file_ids`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:body, :file_ids, :type]

  @schema_name "ReviewAppealSupportCaseMessageCreate"
  def schema_name, do: @schema_name
end
