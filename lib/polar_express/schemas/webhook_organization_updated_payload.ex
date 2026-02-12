# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookOrganizationUpdatedPayload do
  @moduledoc """
  WebhookOrganizationUpdatedPayload

  Sent when a organization is updated.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Organization.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookOrganizationUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Organization
    }
  end

  def __date_fields__, do: [:timestamp]
end
