# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PanTransferStep do
  @moduledoc """
  PanTransferStep

  One checklist step, as persisted on `MerchantMigration.pan_transfer_steps`.

  The row is self-contained: owner and kind are copied off the template so both
  the stored JSONB and the API response can be read without resolving a
  template. The template stays authoritative for the rules that gate a
  transition (`auto_complete`, the accepted inputs), so a step whose key no
  longer has a template can't be completed.
  """

  @typedoc """
  * `completed_at` - When the step was completed. Nullable.
  * `completed_by` - Who completed the step. Nullable.
  * `expected_at` - When Ops expects this step to land. Nullable.
  * `inputs` - Values collected on this step.
  * `key` - Stable identifier. The client keys its copy off it.
  * `kind` - What the owner does, so the client knows what to render.
  * `note` - Free text from Polar Ops, shown to the merchant. How a weeks-long wait on Stripe or the provider gets explained without a support thread. Nullable.
  * `owner` - Who moves this step forward.
  * `started_at` - When the step became actionable. Nullable.
  * `status` - Where the step is. Only one step is actionable at a time.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :completed_at,
    :completed_by,
    :expected_at,
    :inputs,
    :key,
    :kind,
    :note,
    :owner,
    :started_at,
    :status
  ]

  @schema_name "PanTransferStep"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "completed_by" => PolarExpress.Schemas.PanStepActor,
      "kind" => PolarExpress.Schemas.PanStepKind,
      "owner" => PolarExpress.Schemas.PanStepOwner,
      "status" => PolarExpress.Schemas.PanStepStatus
    }
  end

  def __date_fields__, do: [:completed_at, :expected_at, :started_at]
end
