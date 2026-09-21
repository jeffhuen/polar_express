# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationAppealRequest do
  @moduledoc """
  OrganizationAppealRequest
  """

  @typedoc """
  * `reason` - Detailed explanation of why this organization should be approved. Minimum 50 characters. Max length: 5000.
  """
  @type t :: %__MODULE__{}

  defstruct [:reason]

  @schema_name "OrganizationAppealRequest"
  def schema_name, do: @schema_name
end
