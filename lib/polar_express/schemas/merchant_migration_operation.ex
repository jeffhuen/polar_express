# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationOperation do
  @moduledoc """
  MerchantMigrationOperation

  Background work for the current migration step.
  """

  @typedoc """
  * `error` - Why the run failed. None while it is pending, running, or done. Nullable.
  * `stalled` - Whether an active operation has stopped making progress.
  * `status` - pending or running while Polar works; done or failed when it finishes.
  """
  @type t :: %__MODULE__{}

  defstruct [:error, :stalled, :status]

  @schema_name "MerchantMigrationOperation"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "status" => PolarExpress.Schemas.MerchantMigrationOperationStatus
    }
  end
end
