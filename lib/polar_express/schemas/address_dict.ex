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
  @type t :: %__MODULE__{
          city: String.t() | nil,
          country: String.t() | nil,
          line1: String.t() | nil,
          line2: String.t() | nil,
          postal_code: String.t() | nil,
          state: String.t() | nil
        }

  defstruct [:city, :country, :line1, :line2, :postal_code, :state]

  @schema_name "AddressDict"
  def schema_name, do: @schema_name
end
