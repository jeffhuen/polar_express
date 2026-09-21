# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MerchantMigrationNotFound do
  @moduledoc """
  MerchantMigrationNotFound
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "MerchantMigrationNotFound"
  def schema_name, do: @schema_name
end
