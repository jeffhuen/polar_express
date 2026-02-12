# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.MemberSessions do
  @moduledoc """
  Member-sessions

  MemberSessions API operations.
  """

  @typedoc """
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `customer`
  * `customer_id` - Format: uuid4.
  * `expires_at` - Format: date-time.
  * `id` - The ID of the object. Format: uuid4.
  * `member`
  * `member_id` - Format: uuid4.
  * `member_portal_url`
  * `modified_at` - Last modification timestamp of the object.
  * `return_url`
  * `token`
  """
  @type t :: %__MODULE__{
          created_at: String.t() | nil,
          customer: map() | nil,
          customer_id: String.t() | nil,
          expires_at: String.t() | nil,
          id: String.t() | nil,
          member: map() | nil,
          member_id: String.t() | nil,
          member_portal_url: String.t() | nil,
          modified_at: term() | nil,
          return_url: term() | nil,
          token: String.t() | nil
        }

  defstruct [
    :created_at,
    :customer,
    :customer_id,
    :expires_at,
    :id,
    :member,
    :member_id,
    :member_portal_url,
    :modified_at,
    :return_url,
    :token
  ]

  @object_name "member-sessions"
  def object_name, do: @object_name
end
