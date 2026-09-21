# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerSessionCodeRequest do
  @moduledoc """
  CustomerSessionCodeRequest
  """

  @typedoc """
  * `customer_id` - Optional customer ID for disambiguation when multiple customers share the same email. Nullable.
  * `email` - Format: email.
  * `organization_id` - Format: uuid4.
  """
  @type t :: %__MODULE__{}

  defstruct [:customer_id, :email, :organization_id]

  @schema_name "CustomerSessionCodeRequest"
  def schema_name, do: @schema_name
end
