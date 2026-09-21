# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UpdateSubscriptionPlanNotAllowed do
  @moduledoc """
  UpdateSubscriptionPlanNotAllowed
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "UpdateSubscriptionPlanNotAllowed"
  def schema_name, do: @schema_name
end
