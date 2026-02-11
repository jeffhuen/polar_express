# File generated from our OpenAPI spec
defmodule PolarExpress.Services.LicenseKeysService do
  @moduledoc """
  LicenseKeys

  LicenseKeys API operations.
  """
  alias PolarExpress.Client

  @doc """
  Activate License Key

  Activate a license key instance.

  **Scopes**: `license_keys:write`

  See `PolarExpress.Params.LicenseKeysActivateLicenseKeyParams` for parameter details.
  """
  @spec activate_license_key(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.LicenseKeyActivationRead.t()}
          | {:error, PolarExpress.Error.t()}
  def activate_license_key(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/license-keys/activate",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.LicenseKeyActivationRead)
    )
  end

  @doc """
  Deactivate License Key

  Deactivate a license key instance.

  **Scopes**: `license_keys:write`

  See `PolarExpress.Params.LicenseKeysDeactivateLicenseKeyParams` for parameter details.
  """
  @spec deactivate_license_key(Client.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def deactivate_license_key(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/license-keys/deactivate",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Get Activation

  Get a license key activation.

  **Scopes**: `license_keys:read` `license_keys:write`

  See `PolarExpress.Params.LicenseKeysGetActivationParams` for parameter details.
  """
  @spec get_activation(Client.t(), String.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.LicenseKeyActivationRead.t()}
          | {:error, PolarExpress.Error.t()}
  def get_activation(client, id, activation_id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/license-keys/#{id}/activations/#{activation_id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.LicenseKeyActivationRead)
    )
  end

  @doc """
  Get License Key

  Get a license key.

  **Scopes**: `license_keys:read` `license_keys:write`

  See `PolarExpress.Params.LicenseKeysGetLicenseKeyParams` for parameter details.
  """
  @spec get_license_key(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.LicenseKeyWithActivations.t()}
          | {:error, PolarExpress.Error.t()}
  def get_license_key(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/license-keys/#{id}",
      Keyword.merge(opts,
        params: params,
        resource: PolarExpress.Schemas.LicenseKeyWithActivations
      )
    )
  end

  @doc """
  List License Keys

  Get license keys connected to the given organization & filters.

  **Scopes**: `license_keys:read` `license_keys:write`

  See `PolarExpress.Params.LicenseKeysListLicenseKeysParams` for parameter details.
  """
  @spec list_license_keys(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_license_keys(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/license-keys/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.LicenseKeyRead)
    )
  end

  @doc """
  Update License Key

  Update a license key.

  **Scopes**: `license_keys:write`

  See `PolarExpress.Params.LicenseKeysUpdateLicenseKeyParams` for parameter details.
  """
  @spec update_license_key(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.LicenseKeyRead.t()} | {:error, PolarExpress.Error.t()}
  def update_license_key(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/license-keys/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.LicenseKeyRead)
    )
  end

  @doc """
  Validate License Key

  Validate a license key.

  **Scopes**: `license_keys:write`

  See `PolarExpress.Params.LicenseKeysValidateLicenseKeyParams` for parameter details.
  """
  @spec validate_license_key(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.ValidatedLicenseKey.t()} | {:error, PolarExpress.Error.t()}
  def validate_license_key(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/license-keys/validate",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.ValidatedLicenseKey)
    )
  end
end
