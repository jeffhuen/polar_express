# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationNotReadyForPayments do
  @moduledoc """
  OrganizationNotReadyForPayments
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "OrganizationNotReadyForPayments"
  def schema_name, do: @schema_name
end
