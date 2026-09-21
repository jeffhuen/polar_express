# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseAttachmentFile do
  @moduledoc """
  SupportCaseAttachmentFile
  """

  @typedoc """
  * `mime_type`
  * `name`
  * `size`
  """
  @type t :: %__MODULE__{}

  defstruct [:mime_type, :name, :size]

  @schema_name "SupportCaseAttachmentFile"
  def schema_name, do: @schema_name
end
