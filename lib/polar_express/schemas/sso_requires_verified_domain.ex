# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SSORequiresVerifiedDomain do
  @moduledoc """
  SSORequiresVerifiedDomain
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "SSORequiresVerifiedDomain"
  def schema_name, do: @schema_name
end
