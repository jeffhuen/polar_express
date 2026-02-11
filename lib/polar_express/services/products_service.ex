# File generated from our OpenAPI spec
defmodule PolarExpress.Services.ProductsService do
  @moduledoc """
  Products

  Products API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Product

  Create a product.

  **Scopes**: `products:write`

  See `PolarExpress.Params.ProductsCreateProductParams` for parameter details.
  """
  @spec create_product(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Product.t()} | {:error, PolarExpress.Error.t()}
  def create_product(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/products/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Product)
    )
  end

  @doc """
  Get Product

  Get a product by ID.

  **Scopes**: `products:read` `products:write`

  See `PolarExpress.Params.ProductsGetProductParams` for parameter details.
  """
  @spec get_product(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Product.t()} | {:error, PolarExpress.Error.t()}
  def get_product(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/products/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Product)
    )
  end

  @doc """
  List Products

  List products.

  **Scopes**: `products:read` `products:write`

  See `PolarExpress.Params.ProductsListProductsParams` for parameter details.
  """
  @spec list_products(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_products(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/products/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Product)
    )
  end

  @doc """
  Update Product

  Update a product.

  **Scopes**: `products:write`

  See `PolarExpress.Params.ProductsUpdateProductParams` for parameter details.
  """
  @spec update_product(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Product.t()} | {:error, PolarExpress.Error.t()}
  def update_product(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/products/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Product)
    )
  end

  @doc """
  Update Product Benefits

  Update benefits granted by a product.

  **Scopes**: `products:write`

  See `PolarExpress.Params.ProductsUpdateProductBenefitsParams` for parameter details.
  """
  @spec update_product_benefits(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Product.t()} | {:error, PolarExpress.Error.t()}
  def update_product_benefits(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/products/#{id}/benefits",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Product)
    )
  end
end
