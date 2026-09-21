# File generated from our OpenAPI spec
defmodule PolarExpress.Resources.CustomerPortal.CustomerSession do
  @moduledoc """
  Customer-session

  CustomerSession API operations.
  """

  @typedoc """
  * `customer_id` - Associated customer ID. Format: uuid4.
  * `email` - User's email address.
  * `member_id` - Member ID. Only set for members.
  * `name` - User's name, if available.
  * `role` - Member role (owner, billing_manager, member). Only set for members.
  * `type` - Type of authenticated user: 'customer' or 'member'
  """
  @type t :: %__MODULE__{}

  defstruct [:customer_id, :email, :member_id, :name, :role, :type]

  @object_name "customer-session"
  def object_name, do: @object_name
end
