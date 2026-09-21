# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UnsupportedMigrationSource do
  @moduledoc """
  UnsupportedMigrationSource
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "UnsupportedMigrationSource"
  def schema_name, do: @schema_name
end
