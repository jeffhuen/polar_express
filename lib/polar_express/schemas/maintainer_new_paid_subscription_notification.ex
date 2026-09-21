# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MaintainerNewPaidSubscriptionNotification do
  @moduledoc """
  MaintainerNewPaidSubscriptionNotification
  """

  @typedoc """
  * `created_at` - Format: date-time.
  * `id` - Format: uuid4.
  * `payload`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :payload, :type]

  @schema_name "MaintainerNewPaidSubscriptionNotification"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "payload" => PolarExpress.Schemas.MaintainerNewPaidSubscriptionNotificationPayload
    }
  end

  def __date_fields__, do: [:created_at]
end
