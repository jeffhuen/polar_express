# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationIndividualLegalEntitySchema do
  @moduledoc """
  OrganizationIndividualLegalEntitySchema
  """

  @typedoc """
  * `type`
  """
  @type t :: %__MODULE__{
          type: String.t() | nil
        }

  defstruct [:type]

  @schema_name "OrganizationIndividualLegalEntitySchema"
  def schema_name, do: @schema_name
end
