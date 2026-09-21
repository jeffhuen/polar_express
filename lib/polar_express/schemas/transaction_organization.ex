# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionOrganization do
  @moduledoc """
  TransactionOrganization
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `name`
  * `slug`
  """
  @type t :: %__MODULE__{}

  defstruct [:avatar_url, :created_at, :id, :modified_at, :name, :slug]

  @schema_name "TransactionOrganization"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
