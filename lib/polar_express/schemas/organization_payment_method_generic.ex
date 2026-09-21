# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationPaymentMethodGeneric do
  @moduledoc """
  OrganizationPaymentMethodGeneric
  """

  @typedoc """
  * `default`
  * `id`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:default, :id, :type]

  @schema_name "OrganizationPaymentMethodGeneric"
  def schema_name, do: @schema_name
end
