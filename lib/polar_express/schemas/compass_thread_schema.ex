# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CompassThreadSchema do
  @moduledoc """
  CompassThreadSchema

  An assistant conversation thread.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `organization_id` - Format: uuid4.
  * `title`
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :modified_at, :organization_id, :title]

  @schema_name "CompassThreadSchema"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
