# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.SSOFactor do
  @moduledoc """
  SSOFactor
  """

  @typedoc """
  * `connection_id` - Format: uuid4.
  * `name` - Human-friendly label for the connection, shown on the login page. Nullable.
  * `organization_slug`
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:connection_id, :name, :organization_slug, :type]

  @schema_name "SSOFactor"
  def schema_name, do: @schema_name
end
