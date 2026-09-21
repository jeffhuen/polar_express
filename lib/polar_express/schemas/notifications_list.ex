# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.NotificationsList do
  @moduledoc """
  NotificationsList
  """

  @typedoc """
  * `last_read_notification_id` - Nullable.
  * `notifications`
  """
  @type t :: %__MODULE__{}

  defstruct [:last_read_notification_id, :notifications]

  @schema_name "NotificationsList"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "notifications" =>
        {:union, :discriminated, "type",
         %{
           "MaintainerAccountCreditsGrantedNotification" =>
             PolarExpress.Schemas.MaintainerAccountCreditsGrantedNotification,
           "MaintainerFileFlaggedMaliciousNotification" =>
             PolarExpress.Schemas.MaintainerFileFlaggedMaliciousNotification,
           "MaintainerNewPaidSubscriptionNotification" =>
             PolarExpress.Schemas.MaintainerNewPaidSubscriptionNotification,
           "MaintainerNewProductSaleNotification" =>
             PolarExpress.Schemas.MaintainerNewProductSaleNotification,
           "MaintainerSubscriptionRenewalNotification" =>
             PolarExpress.Schemas.MaintainerSubscriptionRenewalNotification
         }}
    }
  end
end
