# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyDeactivate do
  @moduledoc """
  LicenseKeyDeactivate
  """

  @typedoc """
  * `activation_id` - Format: uuid4.
  * `key`
  * `organization_id` - Format: uuid4.
  """
  @type t :: %__MODULE__{
          activation_id: String.t() | nil,
          key: String.t() | nil,
          organization_id: String.t() | nil
        }

  defstruct [:activation_id, :key, :organization_id]

  @schema_name "LicenseKeyDeactivate"
  def schema_name, do: @schema_name
end
