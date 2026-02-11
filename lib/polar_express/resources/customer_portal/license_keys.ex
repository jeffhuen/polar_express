# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.LicenseKeys do
  @moduledoc """
  License-keys

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

  @object_name "license-keys"
  def object_name, do: @object_name
end
