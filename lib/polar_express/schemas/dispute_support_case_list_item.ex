# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.DisputeSupportCaseListItem do
  @moduledoc """
  DisputeSupportCaseListItem
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `dispute` - The dispute this case handles.
  * `id` - The ID of the object. Format: uuid4.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `type`
  """
  @type t :: %__MODULE__{}

  defstruct [:created_at, :dispute, :id, :modified_at, :type]

  @schema_name "DisputeSupportCaseListItem"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "dispute" => PolarExpress.Schemas.Dispute
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
