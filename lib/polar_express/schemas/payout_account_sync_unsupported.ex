# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAccountSyncUnsupported do
  @moduledoc """
  PayoutAccountSyncUnsupported
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "PayoutAccountSyncUnsupported"
  def schema_name, do: @schema_name
end
