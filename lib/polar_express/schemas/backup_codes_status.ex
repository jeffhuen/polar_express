# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BackupCodesStatus do
  @moduledoc """
  BackupCodesStatus
  """

  @typedoc """
  * `codes`
  * `used_codes`
  """
  @type t :: %__MODULE__{}

  defstruct [:codes, :used_codes]

  @schema_name "BackupCodesStatus"
  def schema_name, do: @schema_name
end
