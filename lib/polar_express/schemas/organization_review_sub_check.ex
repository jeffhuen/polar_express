# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationReviewSubCheck do
  @moduledoc """
  OrganizationReviewSubCheck

  A nested sub-item that contributes to a parent check's rolled-up status.

  Sub-checks expose the per-component breakdown for aggregate checks (e.g.
  `setup_readiness`) so the frontend doesn't have to re-derive which path
  is configured. The parent's `status` is the source of truth for gating;
  reasons explaining a sub-item live on the sub-check itself.
  """

  @typedoc """
  * `key`
  * `reasons` - Reasons for the sub-check's current status. Empty when `passed`.
  * `status`
  * `value` - Optional contextual value associated with the sub-check. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:key, :reasons, :status, :value]

  @schema_name "OrganizationReviewSubCheck"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "key" => PolarExpress.Schemas.OrganizationReviewSubCheckKey,
      "reasons" => PolarExpress.Schemas.OrganizationReviewCheckReason,
      "status" => PolarExpress.Schemas.OrganizationReviewCheckStatus
    }
  end
end
