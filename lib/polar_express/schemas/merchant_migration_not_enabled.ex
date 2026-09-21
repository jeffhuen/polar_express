# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationNotEnabled do
  @moduledoc """
  MerchantMigrationNotEnabled
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "MerchantMigrationNotEnabled"
  def schema_name, do: @schema_name
end
