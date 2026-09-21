# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationReviewAppeal do
  @moduledoc """
  OrganizationReviewAppeal
  """

  @typedoc """
  * `decision` - Nullable.
  * `reviewed_at` - Nullable.
  * `submitted_at` - Format: date-time.
  """
  @type t :: %__MODULE__{}

  defstruct [:decision, :reviewed_at, :submitted_at]

  @schema_name "OrganizationReviewAppeal"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "decision" => PolarExpress.Schemas.AppealDecision
    }
  end

  def __date_fields__, do: [:reviewed_at, :submitted_at]
end
