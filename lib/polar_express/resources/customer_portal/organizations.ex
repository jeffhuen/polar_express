# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.Organizations do
  @moduledoc """
  Organizations

  Organizations API operations.
  """

  @typedoc """
  * `organization`
  * `products`
  """
  @type t :: %__MODULE__{
          organization: map() | nil,
          products: [map()] | nil
        }

  defstruct [:organization, :products]

  @object_name "organizations"
  def object_name, do: @object_name
end
