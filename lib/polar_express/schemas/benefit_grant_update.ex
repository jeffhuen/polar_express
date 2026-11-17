# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.BenefitGrantUpdate do
  @moduledoc """
  BenefitGrantUpdate
  """

  @typedoc """
  * `manually_revoked_at` - Set to None to undo a manual revocation.
  """
  @type t :: %__MODULE__{}

  defstruct [:manually_revoked_at]

  @schema_name "BenefitGrantUpdate"
  def schema_name, do: @schema_name
end
