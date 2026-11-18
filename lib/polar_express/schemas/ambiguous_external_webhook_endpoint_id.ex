# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AmbiguousExternalWebhookEndpointID do
  @moduledoc """
  AmbiguousExternalWebhookEndpointID
  """

  @typedoc """
  * `detail`
  * `error`
  """
  @type t :: %__MODULE__{}

  defstruct [:detail, :error]

  @schema_name "AmbiguousExternalWebhookEndpointID"
  def schema_name, do: @schema_name
end
