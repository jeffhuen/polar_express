# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UpdateSubscriptionUnitsNotAllowed do
  @moduledoc """
  UpdateSubscriptionUnitsNotAllowed
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "UpdateSubscriptionUnitsNotAllowed"
  def schema_name, do: @schema_name
end
