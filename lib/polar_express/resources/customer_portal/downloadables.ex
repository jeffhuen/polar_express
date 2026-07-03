# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.Downloadables do
  @moduledoc """
  Downloadables

  Downloadables API operations.
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @object_name "downloadables"
  def object_name, do: @object_name
end
