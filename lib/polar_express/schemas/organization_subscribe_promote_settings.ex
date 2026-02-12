# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationSubscribePromoteSettings do
  @moduledoc """
  OrganizationSubscribePromoteSettings
  """

  @typedoc """
  * `count_free` - Include free subscribers in total count
  * `promote` - Promote email subscription (free)
  * `show_count` - Show subscription count publicly
  """
  @type t :: %__MODULE__{
          count_free: boolean() | nil,
          promote: boolean() | nil,
          show_count: boolean() | nil
        }

  defstruct [:count_free, :promote, :show_count]

  @schema_name "OrganizationSubscribePromoteSettings"
  def schema_name, do: @schema_name
end
