# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.CustomerCardBlock do
  @moduledoc """
  CustomerCardBlock

  A single customer's identity header, above their orders/subscriptions.
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `created_at` - Format: date-time.
  * `email`
  * `name` - Nullable.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:avatar_url, :created_at, :email, :name, :type]

  @schema_name "CustomerCardBlock"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at]
end
