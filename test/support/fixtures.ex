# Test fixture schemas — stable types for infrastructure tests that won't break
# when the upstream OpenAPI spec renames or removes schemas.
#
# These implement the same interface as generated schemas (__inner_types__/0,
# __date_fields__/0) so the Deserializer can cast them identically.

defmodule PolarExpress.Test.Fixtures do
  @moduledoc false

  defmodule Address do
    @moduledoc false
    defstruct [:city, :country, :line1, :line2, :postal_code, :state]
    def schema_name, do: "TestAddress"
  end

  defmodule Member do
    @moduledoc false
    defstruct [:id, :email, :name]
    def schema_name, do: "TestMember"
  end

  defmodule Customer do
    @moduledoc false

    defstruct [
      :id,
      :email,
      :name,
      :email_verified,
      :organization_id,
      :external_id,
      :billing_address,
      :members,
      :metadata,
      :created_at,
      :modified_at,
      :deleted_at
    ]

    def schema_name, do: "TestCustomer"

    def __inner_types__ do
      %{
        "billing_address" => PolarExpress.Test.Fixtures.Address,
        "members" => PolarExpress.Test.Fixtures.Member
      }
    end

    def __date_fields__, do: [:created_at, :modified_at, :deleted_at]
  end
end
