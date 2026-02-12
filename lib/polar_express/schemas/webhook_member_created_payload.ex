# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookMemberCreatedPayload do
  @moduledoc """
  WebhookMemberCreatedPayload

  Sent when a new member is created.

  A member represents an individual within a customer (team).
  This event is triggered when a member is added to a customer,
  either programmatically via the API or when an owner is automatically
  created for a new customer.

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

  @schema_name "WebhookMemberCreatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Member
    }
  end

  def __date_fields__, do: [:timestamp]
end
