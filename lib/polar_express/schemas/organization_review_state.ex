# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationReviewState do
  @moduledoc """
  OrganizationReviewState

  Merchant self-review checklist. Frozen once `submitted_at` is set.
  """

  @typedoc """
  * `appeal` - Nullable.
  * `can_submit` - True when `submitted_at` is null AND no preliminary check is `failed` or `pending`. Warnings do not block submission.
  * `preliminary_steps`
  * `submitted_at` - Nullable.
  * `verdict` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:appeal, :can_submit, :preliminary_steps, :submitted_at, :verdict]

  @schema_name "OrganizationReviewState"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "appeal" => PolarExpress.Schemas.OrganizationReviewAppeal,
      "preliminary_steps" => PolarExpress.Schemas.OrganizationReviewCheck
    }
  end

  def __date_fields__, do: [:submitted_at]
end
