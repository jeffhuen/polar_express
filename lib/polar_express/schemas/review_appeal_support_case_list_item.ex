# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ReviewAppealSupportCaseListItem do
  @moduledoc """
  ReviewAppealSupportCaseListItem
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :modified_at, :type]

  @schema_name "ReviewAppealSupportCaseListItem"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
