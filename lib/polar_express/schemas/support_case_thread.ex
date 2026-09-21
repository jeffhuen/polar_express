# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SupportCaseThread do
  @moduledoc """
  SupportCaseThread
  """

  @typedoc """
  * `attachments`
  * `case`
  * `is_open`
  * `messages`
  """
  @type t :: %__MODULE__{}

  defstruct [:attachments, :case, :is_open, :messages]

  @schema_name "SupportCaseThread"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "attachments" => PolarExpress.Schemas.SupportCaseAttachment,
      "case" => PolarExpress.Schemas.SupportCase,
      "messages" => PolarExpress.Schemas.SupportCaseMessage
    }
  end
end
