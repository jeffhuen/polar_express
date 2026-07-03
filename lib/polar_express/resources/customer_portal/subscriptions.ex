# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.Subscriptions do
  @moduledoc """
  Subscriptions

  Subscriptions API operations.
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @object_name "subscriptions"
  def object_name, do: @object_name
end
