# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationNotificationSettings do
  @moduledoc """
  OrganizationNotificationSettings
  """

  @typedoc """
  * `new_order`
  * `new_subscription`
  """
  @type t :: %__MODULE__{}

  defstruct [:new_order, :new_subscription]

  @schema_name "OrganizationNotificationSettings"
  def schema_name, do: @schema_name
end
