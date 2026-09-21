# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.OrganizationMember do
  @moduledoc """
  OrganizationMember
  """

  @typedoc """
  * `avatar_url` - Nullable.
  * `created_at` - The time the OrganizationMember was created. Format: date-time.
  * `email`
  * `role` - The user's role on the organization.
  * `user_id` - The ID of the user. Format: uuid.
  """
  @type t :: %__MODULE__{}

  defstruct [:avatar_url, :created_at, :email, :role, :user_id]

  @schema_name "OrganizationMember"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "role" => PolarExpress.Schemas.OrganizationRole
    }
  end

  def __date_fields__, do: [:created_at]
end
