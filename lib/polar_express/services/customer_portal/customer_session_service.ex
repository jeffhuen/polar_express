# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.CustomerSessionService do
  @moduledoc """
  Customer-session

  CustomerSession API operations.
  """
  alias PolarExpress.Client

  @doc """
  Get Authenticated Portal User

  Get information about the currently authenticated portal user.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.CustomerSessionGetAuthenticatedPortalUserParams` for parameter details.
  """
  @spec get_authenticated_portal_user(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.PortalAuthenticatedUser.t()}
          | {:error, PolarExpress.Error.t()}
  def get_authenticated_portal_user(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/customer-session/user",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.PortalAuthenticatedUser)
    )
  end

  @doc """
  Introspect Customer Session

  Introspect the current session and return its information.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.CustomerSessionIntrospectCustomerSessionParams` for parameter details.
  """
  @spec introspect_customer_session(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerCustomerSession.t()}
          | {:error, PolarExpress.Error.t()}
  def introspect_customer_session(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/customer-session/introspect",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerCustomerSession)
    )
  end
end
