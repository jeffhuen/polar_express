# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AddressDict do
  @moduledoc """
  AddressDict
  """

  @typedoc """
  * `city`
  * `country`
  * `line1`
  * `line2`
  * `postal_code`
  * `state`
  """
  @type t :: %__MODULE__{}

  defstruct [:city, :country, :line1, :line2, :postal_code, :state]

  @schema_name "AddressDict"
  def schema_name, do: @schema_name
end
