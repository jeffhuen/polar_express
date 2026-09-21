# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UpdateSubscriptionSeatsNotAllowed do
  @moduledoc """
  UpdateSubscriptionSeatsNotAllowed
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "UpdateSubscriptionSeatsNotAllowed"
  def schema_name, do: @schema_name
end
