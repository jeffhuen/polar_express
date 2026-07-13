# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.Members do
  @moduledoc """
  Members

  Members API operations.
  """

  @typedoc """
  * `items`
  * `pagination`
  """
  @type t :: %__MODULE__{}

  defstruct [:items, :pagination]

  @object_name "members"
  def object_name, do: @object_name
end
