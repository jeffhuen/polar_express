# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MaintainerAccountCreditsGrantedNotificationPayload do
  @moduledoc """
  MaintainerAccountCreditsGrantedNotificationPayload
  """

  @typedoc """
  * `amount`
  * `currency`
  * `formatted_amount`
  * `organization_name`
  """
  @type t :: %__MODULE__{}

  defstruct [:amount, :currency, :formatted_amount, :organization_name]

  @schema_name "MaintainerAccountCreditsGrantedNotificationPayload"
  def schema_name, do: @schema_name
end
