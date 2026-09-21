# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.NotificationsMarkRead do
  @moduledoc """
  NotificationsMarkRead
  """

  @typedoc """
  * `notification_id` - Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [:notification_id]

  @schema_name "NotificationsMarkRead"
  def schema_name, do: @schema_name
end
