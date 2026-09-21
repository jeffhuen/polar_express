# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserDeletionResponse do
  @moduledoc """
  UserDeletionResponse

  Response for user deletion request.
  """

  @typedoc """
  * `blocked_reasons` - Reasons why immediate deletion is blocked
  * `blocking_organizations` - Organizations that must be deleted first
  * `deleted` - Whether the user account was immediately deleted
  """
  @type t :: %__MODULE__{}

  defstruct [:blocked_reasons, :blocking_organizations, :deleted]

  @schema_name "UserDeletionResponse"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "blocked_reasons" => PolarExpress.Schemas.UserDeletionBlockedReason,
      "blocking_organizations" => PolarExpress.Schemas.BlockingOrganization
    }
  end
end
