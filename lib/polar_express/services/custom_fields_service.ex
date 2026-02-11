# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomFieldsService do
  @moduledoc """
  Custom-fields

  CustomFields API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Custom Field

  Create a custom field.

  **Scopes**: `custom_fields:write`

  See `PolarExpress.Params.CustomFieldsCreateCustomFieldParams` for parameter details.
  """
  @spec create_custom_field(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomField.t()} | {:error, PolarExpress.Error.t()}
  def create_custom_field(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/custom-fields/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomField)
    )
  end

  @doc """
  Delete Custom Field

  Delete a custom field.

  **Scopes**: `custom_fields:write`

  See `PolarExpress.Params.CustomFieldsDeleteCustomFieldParams` for parameter details.
  """
  @spec delete_custom_field(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_custom_field(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/custom-fields/#{id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Get Custom Field

  Get a custom field by ID.

  **Scopes**: `custom_fields:read` `custom_fields:write`

  See `PolarExpress.Params.CustomFieldsGetCustomFieldParams` for parameter details.
  """
  @spec get_custom_field(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomField.t()} | {:error, PolarExpress.Error.t()}
  def get_custom_field(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/custom-fields/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomField)
    )
  end

  @doc """
  List Custom Fields

  List custom fields.

  **Scopes**: `custom_fields:read` `custom_fields:write`

  See `PolarExpress.Params.CustomFieldsListCustomFieldsParams` for parameter details.
  """
  @spec list_custom_fields(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_custom_fields(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/custom-fields/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomField)
    )
  end

  @doc """
  Update Custom Field

  Update a custom field.

  **Scopes**: `custom_fields:write`

  See `PolarExpress.Params.CustomFieldsUpdateCustomFieldParams` for parameter details.
  """
  @spec update_custom_field(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CustomField.t()} | {:error, PolarExpress.Error.t()}
  def update_custom_field(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/custom-fields/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CustomField)
    )
  end
end
