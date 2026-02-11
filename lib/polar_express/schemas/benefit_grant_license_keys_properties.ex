# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantLicenseKeysProperties do
  @moduledoc """
  BenefitGrantLicenseKeysProperties
  """

  @typedoc """
  * `display_key`
  * `license_key_id`
  * `user_provided_key`
  """
  @type t :: %__MODULE__{
          display_key: String.t() | nil,
          license_key_id: String.t() | nil,
          user_provided_key: String.t() | nil
        }

  defstruct [:display_key, :license_key_id, :user_provided_key]

  @schema_name "BenefitGrantLicenseKeysProperties"
  def schema_name, do: @schema_name
end
