# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.AccountCredit do
  @moduledoc """
  AccountCredit
  """

  @typedoc """
  * `amount`
  * `expires_at` - Nullable.
  * `granted_at` - Format: date-time.
  * `id` - Format: uuid.
  * `revoked_at` - Nullable.
  * `title`
  * `used`
  """
  @type t :: %__MODULE__{}

  defstruct [:amount, :expires_at, :granted_at, :id, :revoked_at, :title, :used]

  @schema_name "AccountCredit"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:expires_at, :granted_at, :revoked_at]
end
