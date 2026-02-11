# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomersService do
  @moduledoc """
  Customers

  Customers API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Customer

  Create a customer.

  **Scopes**: `customers:write`

  See `PolarExpress.Params.CustomersCreateCustomerParams` for parameter details.
  """
  @spec create_customer(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerWithMembers.t()} | {:error, PolarExpress.Error.t()}
  def create_customer(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customers/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerWithMembers)
    )
  end

  @doc """
  Delete Customer

  Delete a customer.

  This action cannot be undone and will immediately:
  - Cancel any active subscriptions for the customer
  - Revoke all their benefits
  - Clear any `external_id`

  Use it only in the context of deleting a user within your
  own service. Otherwise, use more granular API endpoints to cancel
  a specific subscription or revoke certain benefits.

  Note: The customers information will nonetheless be retained for historic
  orders and subscriptions.

  Set `anonymize=true` to also anonymize PII for GDPR compliance.

  **Scopes**: `customers:write`

  See `PolarExpress.Params.CustomersDeleteCustomerParams` for parameter details.
  """
  @spec delete_customer(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_customer(client, id, params \\ %{}, opts \\ []) do
    Client.request(client, :delete, "/v1/customers/#{id}", Keyword.merge(opts, params: params))
  end

  @doc """
  Delete Customer by External ID

  Delete a customer by external ID.

  Immediately cancels any active subscriptions and revokes any active benefits.

  Set `anonymize=true` to also anonymize PII for GDPR compliance.

  **Scopes**: `customers:write`

  See `PolarExpress.Params.CustomersDeleteCustomerByExternalIdParams` for parameter details.
  """
  @spec delete_customer_by_external_id(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_customer_by_external_id(client, external_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/customers/external/#{external_id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Export Customers

  Export customers as a CSV file.

  **Scopes**: `customers:read` `customers:write`

  See `PolarExpress.Params.CustomersExportCustomersParams` for parameter details.
  """
  @spec export_customers(Client.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def export_customers(client, params \\ %{}, opts \\ []) do
    Client.request(client, :get, "/v1/customers/export", Keyword.merge(opts, params: params))
  end

  @doc """
  Get Customer

  Get a customer by ID.

  **Scopes**: `customers:read` `customers:write`

  See `PolarExpress.Params.CustomersGetCustomerParams` for parameter details.
  """
  @spec get_customer(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerWithMembers.t()} | {:error, PolarExpress.Error.t()}
  def get_customer(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customers/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerWithMembers)
    )
  end

  @doc """
  Get Customer by External ID

  Get a customer by external ID.

  **Scopes**: `customers:read` `customers:write`

  See `PolarExpress.Params.CustomersGetCustomerByExternalIdParams` for parameter details.
  """
  @spec get_customer_by_external_id(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerWithMembers.t()} | {:error, PolarExpress.Error.t()}
  def get_customer_by_external_id(client, external_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customers/external/#{external_id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerWithMembers)
    )
  end

  @doc """
  Get Customer State

  Get a customer state by ID.

  The customer state includes information about
  the customer's active subscriptions and benefits.

  It's the ideal endpoint to use when you need to get a full overview
  of a customer's status.

  **Scopes**: `customers:read` `customers:write`

  See `PolarExpress.Params.CustomersGetCustomerStateParams` for parameter details.
  """
  @spec get_customer_state(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerState.t()} | {:error, PolarExpress.Error.t()}
  def get_customer_state(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customers/#{id}/state",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerState)
    )
  end

  @doc """
  Get Customer State by External ID

  Get a customer state by external ID.

  The customer state includes information about
  the customer's active subscriptions and benefits.

  It's the ideal endpoint to use when you need to get a full overview
  of a customer's status.

  **Scopes**: `customers:read` `customers:write`

  See `PolarExpress.Params.CustomersGetCustomerStateByExternalIdParams` for parameter details.
  """
  @spec get_customer_state_by_external_id(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerState.t()} | {:error, PolarExpress.Error.t()}
  def get_customer_state_by_external_id(client, external_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customers/external/#{external_id}/state",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerState)
    )
  end

  @doc """
  List Customers

  List customers.

  **Scopes**: `customers:read` `customers:write`

  See `PolarExpress.Params.CustomersListCustomersParams` for parameter details.
  """
  @spec list_customers(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_customers(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customers/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerWithMembers)
    )
  end

  @doc """
  Update Customer

  Update a customer.

  **Scopes**: `customers:write`

  See `PolarExpress.Params.CustomersUpdateCustomerParams` for parameter details.
  """
  @spec update_customer(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerWithMembers.t()} | {:error, PolarExpress.Error.t()}
  def update_customer(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/customers/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerWithMembers)
    )
  end

  @doc """
  Update Customer by External ID

  Update a customer by external ID.

  **Scopes**: `customers:write`

  See `PolarExpress.Params.CustomersUpdateCustomerByExternalIdParams` for parameter details.
  """
  @spec update_customer_by_external_id(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomerWithMembers.t()} | {:error, PolarExpress.Error.t()}
  def update_customer_by_external_id(client, external_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/customers/external/#{external_id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomerWithMembers)
    )
  end
end
