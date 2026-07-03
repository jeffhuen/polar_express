# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.Customers do
  @moduledoc """
  Customers

  Customers API operations.
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @object_name "customers"
  def object_name, do: @object_name
end
