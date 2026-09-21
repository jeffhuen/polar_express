# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationValidateWebsiteResponse do
  @moduledoc """
  OrganizationValidateWebsiteResponse
  """

  @typedoc """
  * `error` - Error message if the URL is not reachable. Nullable.
  * `reachable` - Whether the URL is reachable.
  * `status` - HTTP status code returned by the URL. Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:error, :reachable, :status]

  @schema_name "OrganizationValidateWebsiteResponse"
  def schema_name, do: @schema_name
end
