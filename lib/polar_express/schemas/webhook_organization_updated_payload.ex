# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookOrganizationUpdatedPayload do
  @moduledoc """
  WebhookOrganizationUpdatedPayload

  Sent when a organization is updated.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `api_version`
  * `data`
  * `event_id` - The ID of the event. Use it to discard duplicate deliveries. Format: uuid.
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:api_version, :data, :event_id, :timestamp, :type]

  @schema_name "WebhookOrganizationUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Organization
    }
  end

  def __date_fields__, do: [:timestamp]
end
