# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ChannelNamePreviewValidationErrorResponse do
  @moduledoc """
  ChannelNamePreviewValidationErrorResponse
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "ChannelNamePreviewValidationErrorResponse"
  def schema_name, do: @schema_name
end
