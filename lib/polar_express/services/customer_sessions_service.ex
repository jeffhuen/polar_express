# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerSessionsService do
  @moduledoc """
  Customer-sessions

  CustomerSessions API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Customer Session

  Create a customer session.

  For organizations with `member_model_enabled`, this will automatically
  create a member session for the owner member of the customer.

  **Scopes**: `customer_sessions:write`

  See `PolarExpress.Params.CustomerSessionsCreateCustomerSessionParams` for parameter details.
  """
  @spec create_customer_session(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerSession.t()} | {:error, PolarExpress.Error.t()}
  def create_customer_session(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-sessions/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerSession)
    )
  end
end
