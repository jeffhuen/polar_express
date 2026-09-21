# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SSOEnforcementRequiresConnection do
  @moduledoc """
  SSOEnforcementRequiresConnection
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "SSOEnforcementRequiresConnection"
  def schema_name, do: @schema_name
end
