# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MaintainerFileFlaggedMaliciousNotificationPayload do
  @moduledoc """
  MaintainerFileFlaggedMaliciousNotificationPayload
  """

  @typedoc """
  * `file_name`
  * `organization_name`
  * `organization_slug` - Nullable.
  """
  @type t :: %__MODULE__{}

  defstruct [:file_name, :organization_name, :organization_slug]

  @schema_name "MaintainerFileFlaggedMaliciousNotificationPayload"
  def schema_name, do: @schema_name
end
