# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionIssueReward do
  @moduledoc """
  TransactionIssueReward
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `issue_reference`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `share_thousands`
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :issue_reference, :modified_at, :share_thousands]

  @schema_name "TransactionIssueReward"
  def schema_name, do: @schema_name

  def __date_fields__, do: [:created_at, :modified_at]
end
