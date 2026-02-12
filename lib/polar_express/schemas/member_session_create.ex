# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.MemberSessionCreate do
  @moduledoc """
  MemberSessionCreate

  Schema for creating a member session using a member ID.
  """

  @typedoc """
  * `member_id` - ID of the member to create a session for. Format: uuid4.
  * `return_url` - When set, a back button will be shown in the customer portal to return to this URL. Nullable.
  """
  @type t :: %__MODULE__{
          member_id: String.t() | nil,
          return_url: String.t() | nil
        }

  defstruct [:member_id, :return_url]

  @schema_name "MemberSessionCreate"
  def schema_name, do: @schema_name
end
