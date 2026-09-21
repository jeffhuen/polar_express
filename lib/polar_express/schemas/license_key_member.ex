# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.LicenseKeyMember do
  @moduledoc """
  LicenseKeyMember
  """

  @typedoc """
  * `email` - The email address of the seat member.
  * `external_id` - The external ID of the seat member, if set. Nullable.
  * `id` - The ID of the object. Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [:email, :external_id, :id]

  @schema_name "LicenseKeyMember"
  def schema_name, do: @schema_name
end
