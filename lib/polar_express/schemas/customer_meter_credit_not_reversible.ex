# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerMeterCreditNotReversible do
  @moduledoc """
  CustomerMeterCreditNotReversible
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "CustomerMeterCreditNotReversible"
  def schema_name, do: @schema_name
end
