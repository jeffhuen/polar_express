# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.WebhookBenefitUpdatedPayload do
  @moduledoc """
  WebhookBenefitUpdatedPayload

  Sent when a benefit is updated.

  **Discord & Slack support:** Basic
  """

  @typedoc """
  * `data`
  * `timestamp` - Format: date-time.
  * `type`
  """
  @type t :: %__MODULE__{
          data: PolarExpress.Schemas.Benefit.t() | nil,
          timestamp: DateTime.t() | nil,
          type: String.t() | nil
        }

  defstruct [:data, :timestamp, :type]

  @schema_name "WebhookBenefitUpdatedPayload"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "data" => PolarExpress.Schemas.Benefit
    }
  end

  def __date_fields__, do: [:timestamp]
end
