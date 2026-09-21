# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationDeletionResponse do
  @moduledoc """
  OrganizationDeletionResponse

  Response for organization deletion request.
  """

  @typedoc """
  * `blocked_reasons` - Reasons why immediate deletion is blocked
  * `deleted` - Whether the organization was immediately deleted
  * `requires_support` - Whether a support ticket was created for manual handling
  """
  @type t :: %__MODULE__{}

  defstruct [:blocked_reasons, :deleted, :requires_support]

  @schema_name "OrganizationDeletionResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "blocked_reasons" => PolarExpress.Schemas.OrganizationDeletionBlockedReason
    }
  end
end
