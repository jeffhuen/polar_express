# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.LicenseKeys do
  @moduledoc """
  LicenseKeys

  LicenseKeys API operations.
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @object_name "license_keys"
  def object_name, do: @object_name
end
