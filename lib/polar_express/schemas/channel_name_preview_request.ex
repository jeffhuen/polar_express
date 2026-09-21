# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ChannelNamePreviewRequest do
  @moduledoc """
  ChannelNamePreviewRequest
  """

  @typedoc """
  * `customer_email`
  * `customer_metadata`
  * `customer_name`
  * `organization_id` - Nullable.
  * `template` - Max length: 80.
  """
  @type t :: %__MODULE__{}

  defstruct [:customer_email, :customer_metadata, :customer_name, :organization_id, :template]

  @schema_name "ChannelNamePreviewRequest"
  def schema_name, do: @schema_name
end
