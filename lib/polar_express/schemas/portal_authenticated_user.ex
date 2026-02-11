# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.PortalAuthenticatedUser do
  @moduledoc """
  PortalAuthenticatedUser

  Information about the authenticated portal user.
  """

  @typedoc """
  * `customer_id` - Associated customer ID. Format: uuid4.
  * `email` - User's email address.
  * `member_id` - Member ID. Only set for members. Nullable.
  * `name` - User's name, if available. Nullable.
  * `role` - Member role (owner, billing_manager, member). Only set for members. Nullable.
  * `type` - Type of authenticated user: 'customer' or 'member'
  """
  @type t :: %__MODULE__{
          customer_id: String.t() | nil,
          email: String.t() | nil,
          member_id: String.t() | nil,
          name: String.t() | nil,
          role: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:customer_id, :email, :member_id, :name, :role, :type]

  @schema_name "PortalAuthenticatedUser"
  def schema_name, do: @schema_name
end
