# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.TransactionPledge do
  @moduledoc """
  TransactionPledge
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `issue_reference`
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `state`
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :id, :issue_reference, :modified_at, :state]

  @schema_name "TransactionPledge"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "state" => PolarExpress.Schemas.PledgeState
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
