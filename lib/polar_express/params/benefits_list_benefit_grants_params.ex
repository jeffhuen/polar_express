# File generated from our OpenAPI spec
defmodule PolarExpress.Params.BenefitsListBenefitGrantsParams do
  @moduledoc "Parameters for benefits list benefit grants."

  @typedoc """
  * `customer_id` - Filter by customer.
  * `is_granted` - Filter by granted status. If `true`, only granted benefits will be returned. If `false`, only revoked benefits will be returned.
  * `limit` - Size of a page, defaults to 10. Maximum is 100.
  * `member_id` - Filter by member.
  * `page` - Page number, defaults to 1.
  """
  @type t :: %__MODULE__{
          customer_id: map() | nil,
          is_granted: boolean() | nil,
          limit: integer() | nil,
          member_id: map() | nil,
          page: integer() | nil
        }

  defstruct [:customer_id, :is_granted, :limit, :member_id, :page]
end
