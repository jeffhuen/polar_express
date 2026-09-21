# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.UserRead do
  @moduledoc """
  UserRead
  """

  @typedoc """
  * `accepted_terms_of_service`
  * `account_id` - Nullable.
  * `avatar_url` - Nullable.
  * `country` - Nullable.
  * `created_at` - Creation timestamp of the object. Format: date-time.
  * `date_of_birth` - Nullable.
  * `email` - Format: email.
  * `email_hash` - Nullable.
  * `first_name` - Nullable.
  * `id` - Format: uuid.
  * `identity_verification_status`
  * `identity_verified`
  * `is_admin`
  * `last_name` - Nullable.
  * `member_organizations` - All organizations the user is a member of, regardless of whether they're accessible in the current session. Compare with `organizations` (the accessible subset) to determine access. Populated by `GET /v1/users/me`.
  * `modified_at` - Last modification timestamp of the object. Nullable.
  * `oauth_accounts`
  * `organization_scoped` - Whether the current session is restricted to a specific organization. Such sessions cannot access other organizations or create new ones. Populated by `GET /v1/users/me`.
  * `organizations` - Organizations the user is a member of and can access in the current session, with their role on each. Populated by `GET /v1/users/me`; empty otherwise.
  """
  @type t :: %__MODULE__{}

  defstruct [
    :accepted_terms_of_service,
    :account_id,
    :avatar_url,
    :country,
    :created_at,
    :date_of_birth,
    :email,
    :email_hash,
    :first_name,
    :id,
    :identity_verification_status,
    :identity_verified,
    :is_admin,
    :last_name,
    :member_organizations,
    :modified_at,
    :oauth_accounts,
    :organization_scoped,
    :organizations
  ]

  @schema_name "UserRead"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "identity_verification_status" => PolarExpress.Schemas.IdentityVerificationStatus,
      "member_organizations" => PolarExpress.Schemas.MemberOrganization,
      "oauth_accounts" => PolarExpress.Schemas.OAuthAccountRead,
      "organizations" => PolarExpress.Schemas.OrganizationWithRole
    }
  end

  def __date_fields__, do: [:created_at, :modified_at]
end
