# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookMemberUpdatedPayload do
  @moduledoc """
  WebhookMemberUpdatedPayload

  Sent when a member is updated.

  This event is triggered when member details are updated,
  such as their name or role within the customer.

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

  @schema_name "WebhookMemberUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Member
    }
  end

  def __date_fields__, do: [:timestamp]
end
