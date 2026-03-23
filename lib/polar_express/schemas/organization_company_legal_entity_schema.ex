# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationCompanyLegalEntitySchema do
  @moduledoc """
  OrganizationCompanyLegalEntitySchema
  """

  @typedoc """
  * `registered_name`
  * `type`
  """
  @type t :: %__MODULE__{
          registered_name: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:registered_name, :type]

  @schema_name "OrganizationCompanyLegalEntitySchema"
  def schema_name, do: @schema_name
end
