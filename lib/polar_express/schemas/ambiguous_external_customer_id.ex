# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AmbiguousExternalCustomerID do
  @moduledoc """
  AmbiguousExternalCustomerID
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "AmbiguousExternalCustomerID"
  def schema_name, do: @schema_name
end
