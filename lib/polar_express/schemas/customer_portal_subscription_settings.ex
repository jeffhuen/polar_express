# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerPortalSubscriptionSettings do
  @moduledoc """
  CustomerPortalSubscriptionSettings
  """

  @typedoc """
  * `pause`
  * `update_plan`
  * `update_seats`
  """
  @type t :: %__MODULE__{}

  defstruct [:pause, :update_plan, :update_seats]

  @schema_name "CustomerPortalSubscriptionSettings"
  def schema_name, do: @schema_name
end
