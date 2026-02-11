# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CustomerPortal.LicenseKeysService do
  @moduledoc """
  License-keys

  LicenseKeys API operations.
  """
  alias PolarExpress.Client

  @doc """
  Activate License Key

  Activate a license key instance.

  > This endpoint doesn't require authentication and can be safely used on a public
  > client, like a desktop application or a mobile app.
  > If you plan to validate a license key on a server, use the `/v1/license-keys/activate`
  > endpoint instead.

  See `PolarExpress.Params.CustomerPortal.LicenseKeysActivateLicenseKeyParams` for parameter details.
  """
  @spec activate_license_key(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.LicenseKeyActivationRead.t()}
          | {:error, PolarExpress.Error.t()}
  def activate_license_key(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/license-keys/activate",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.LicenseKeyActivationRead)
    )
  end

  @doc """
  Deactivate License Key

  Deactivate a license key instance.

  > This endpoint doesn't require authentication and can be safely used on a public
  > client, like a desktop application or a mobile app.
  > If you plan to validate a license key on a server, use the `/v1/license-keys/deactivate`
  > endpoint instead.

  See `PolarExpress.Params.CustomerPortal.LicenseKeysDeactivateLicenseKeyParams` for parameter details.
  """
  @spec deactivate_license_key(Client.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def deactivate_license_key(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/license-keys/deactivate",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Get License Key

  Get a license key.

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.LicenseKeysGetLicenseKeyParams` for parameter details.
  """
  @spec get_license_key(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.LicenseKeyWithActivations.t()}
          | {:error, PolarExpress.Error.t()}
  def get_license_key(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/license-keys/#{id}",
      Keyword.merge(opts,
        params: params,
        resource: PolarExpress.Schemas.LicenseKeyWithActivations
      )
    )
  end

  @doc """
  List License Keys

  **Scopes**: `customer_portal:read` `customer_portal:write`

  See `PolarExpress.Params.CustomerPortal.LicenseKeysListLicenseKeysParams` for parameter details.
  """
  @spec list_license_keys(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_license_keys(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/customer-portal/license-keys/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.LicenseKeyRead)
    )
  end

  @doc """
  Validate License Key

  Validate a license key.

  > This endpoint doesn't require authentication and can be safely used on a public
  > client, like a desktop application or a mobile app.
  > If you plan to validate a license key on a server, use the `/v1/license-keys/validate`
  > endpoint instead.

  See `PolarExpress.Params.CustomerPortal.LicenseKeysValidateLicenseKeyParams` for parameter details.
  """
  @spec validate_license_key(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.ValidatedLicenseKey.t()} | {:error, PolarExpress.Error.t()}
  def validate_license_key(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/customer-portal/license-keys/validate",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.ValidatedLicenseKey)
    )
  end
end
