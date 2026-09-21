# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAccountSyncFailed do
  @moduledoc """
  PayoutAccountSyncFailed
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PayoutAccountSyncFailed"
  def schema_name, do: @schema_name
end
