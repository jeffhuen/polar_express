# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookMemberDeletedPayload do
  @moduledoc """
  WebhookMemberDeletedPayload

  Sent when a member is deleted.

  This event is triggered when a member is removed from a customer.
  Any active seats assigned to the member will be automatically revoked.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Member.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookMemberDeletedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Member
    }
  end

  def __date_fields__, do: [:timestamp]
end
