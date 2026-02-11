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
  @type t :: %__MODULE__{
          detail: String.t() | nil,
          error: String.t() | nil
        }

  defstruct [:detail, :error]

  @object_name "license_keys"
  def object_name, do: @object_name
end
