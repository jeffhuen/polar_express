# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PayoutAccountCreate do
  @moduledoc """
  PayoutAccountCreate
  """

  @typedoc """
  * `country`
  * `organization_id` - Organization ID to create or get account for Format: uuid.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:country, :organization_id, :type]

  @schema_name "PayoutAccountCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "country" => PolarExpress.Schemas.StripeAccountCountry
    }
  end
end
