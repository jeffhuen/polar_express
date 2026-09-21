# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationPaymentMethodCard do
  @moduledoc """
  OrganizationPaymentMethodCard
  """

  @typedoc """
  * `default`
  * `id`
  * `method_metadata`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:default, :id, :method_metadata, :type]

  @schema_name "OrganizationPaymentMethodCard"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "method_metadata" => PolarExpress.Schemas.OrganizationPaymentMethodCardMetadata
    }
  end
end
