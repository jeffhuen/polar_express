# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationReviewCheck do
  @moduledoc """
  OrganizationReviewCheck

  A single item in the self-review checklist.
  """

  @typedoc """
  * `key`
  * `reasons` - Reasons for the current status. Empty when `passed`.
  * `status`
  * `sub_checks` - Per-component breakdown, populated only for aggregate checks (currently `setup_readiness`). The parent `status` is the source of truth for gating.
  * `value` - Optional contextual value associated with the check, e.g. the product URL for the `product_url` check. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:key, :reasons, :status, :sub_checks, :value]

  @schema_name "OrganizationReviewCheck"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "key" => PolarExpress.Schemas.OrganizationReviewCheckKey,
      "reasons" => PolarExpress.Schemas.OrganizationReviewCheckReason,
      "status" => PolarExpress.Schemas.OrganizationReviewCheckStatus,
      "sub_checks" => PolarExpress.Schemas.OrganizationReviewSubCheck
    }
  end
end
