# File generated from our OpenAPI spec
defmodule PolarExpress.Services.CheckoutLinksService do
  @moduledoc """
  Checkout-links

  CheckoutLinks API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Checkout Link

  Create a checkout link.

  **Scopes**: `checkout_links:write`

  See `PolarExpress.Params.CheckoutLinksCreateCheckoutLinkParams` for parameter details.
  """
  @spec create_checkout_link(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CheckoutLink.t()} | {:error, PolarExpress.Error.t()}
  def create_checkout_link(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/checkout-links/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CheckoutLink)
    )
  end

  @doc """
  Delete Checkout Link

  Delete a checkout link.

  **Scopes**: `checkout_links:write`

  See `PolarExpress.Params.CheckoutLinksDeleteCheckoutLinkParams` for parameter details.
  """
  @spec delete_checkout_link(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_checkout_link(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/checkout-links/#{id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Get Checkout Link

  Get a checkout link by ID.

  **Scopes**: `checkout_links:read` `checkout_links:write`

  See `PolarExpress.Params.CheckoutLinksGetCheckoutLinkParams` for parameter details.
  """
  @spec get_checkout_link(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CheckoutLink.t()} | {:error, PolarExpress.Error.t()}
  def get_checkout_link(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/checkout-links/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CheckoutLink)
    )
  end

  @doc """
  List Checkout Links

  List checkout links.

  **Scopes**: `checkout_links:read` `checkout_links:write`

  See `PolarExpress.Params.CheckoutLinksListCheckoutLinksParams` for parameter details.
  """
  @spec list_checkout_links(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_checkout_links(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/checkout-links/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CheckoutLink)
    )
  end

  @doc """
  Update Checkout Link

  Update a checkout link.

  **Scopes**: `checkout_links:write`

  See `PolarExpress.Params.CheckoutLinksUpdateCheckoutLinkParams` for parameter details.
  """
  @spec update_checkout_link(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.CheckoutLink.t()} | {:error, PolarExpress.Error.t()}
  def update_checkout_link(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/checkout-links/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.CheckoutLink)
    )
  end
end
