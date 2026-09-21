# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationReviewStatus do
  @moduledoc """
  OrganizationReviewStatus
  """

  @typedoc """
  * `appeal_case_id` - ID of the human-review support case, if one was opened Nullable.
  * `appeal_decision` - Decision on the appeal (approved/rejected) Nullable.
  * `appeal_reason` - Reason for the appeal Nullable.
  * `appeal_reviewed_at` - When appeal was reviewed Nullable.
  * `appeal_submitted_at` - When appeal was submitted Nullable.
  * `reason` - Reason for the verdict Nullable.
  * `verdict` - AI validation verdict Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :appeal_case_id,
    :appeal_decision,
    :appeal_reason,
    :appeal_reviewed_at,
    :appeal_submitted_at,
    :reason,
    :verdict
  ]

  @schema_name "OrganizationReviewStatus"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "appeal_decision" => PolarExpress.Schemas.AppealDecision
    }
  end

  def __date_fields__, do: [:appeal_reviewed_at, :appeal_submitted_at]
end
