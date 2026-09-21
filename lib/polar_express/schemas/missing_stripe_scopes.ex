# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MissingStripeScopes do
  @moduledoc """
  MissingStripeScopes
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "MissingStripeScopes"
  def schema_name, do: @schema_name
end
