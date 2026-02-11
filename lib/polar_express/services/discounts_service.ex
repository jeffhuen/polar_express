# File generated from our OpenAPI spec
defmodule PolarExpress.Services.DiscountsService do
  @moduledoc """
  Discounts

  Discounts API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Discount

  Create a discount.

  **Scopes**: `discounts:write`

  See `PolarExpress.Params.DiscountsCreateDiscountParams` for parameter details.
  """
  @spec create_discount(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Discount.t()} | {:error, PolarExpress.Error.t()}
  def create_discount(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/discounts/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Discount)
    )
  end

  @doc """
  Delete Discount

  Delete a discount.

  **Scopes**: `discounts:write`

  See `PolarExpress.Params.DiscountsDeleteDiscountParams` for parameter details.
  """
  @spec delete_discount(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_discount(client, id, params \\ %{}, opts \\ []) do
    Client.request(client, :delete, "/v1/discounts/#{id}", Keyword.merge(opts, params: params))
  end

  @doc """
  Get Discount

  Get a discount by ID.

  **Scopes**: `discounts:read` `discounts:write`

  See `PolarExpress.Params.DiscountsGetDiscountParams` for parameter details.
  """
  @spec get_discount(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Discount.t()} | {:error, PolarExpress.Error.t()}
  def get_discount(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/discounts/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Discount)
    )
  end

  @doc """
  List Discounts

  List discounts.

  **Scopes**: `discounts:read` `discounts:write`

  See `PolarExpress.Params.DiscountsListDiscountsParams` for parameter details.
  """
  @spec list_discounts(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_discounts(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/discounts/",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Discount)
    )
  end

  @doc """
  Update Discount

  Update a discount.

  **Scopes**: `discounts:write`

  See `PolarExpress.Params.DiscountsUpdateDiscountParams` for parameter details.
  """
  @spec update_discount(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.Discount.t()} | {:error, PolarExpress.Error.t()}
  def update_discount(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/discounts/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.Discount)
    )
  end
end
