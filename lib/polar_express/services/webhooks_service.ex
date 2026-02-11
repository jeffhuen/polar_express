# File generated from our OpenAPI spec
defmodule PolarExpress.Services.WebhooksService do
  @moduledoc """
  Webhooks

  Webhooks API operations.
  """
  alias PolarExpress.Client

  @doc """
  Create Webhook Endpoint

  Create a webhook endpoint.

  **Scopes**: `webhooks:write`

  See `PolarExpress.Params.WebhooksCreateWebhookEndpointParams` for parameter details.
  """
  @spec create_webhook_endpoint(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.WebhookEndpoint.t()} | {:error, PolarExpress.Error.t()}
  def create_webhook_endpoint(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/webhooks/endpoints",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.WebhookEndpoint)
    )
  end

  @doc """
  Delete Webhook Endpoint

  Delete a webhook endpoint.

  **Scopes**: `webhooks:write`

  See `PolarExpress.Params.WebhooksDeleteWebhookEndpointParams` for parameter details.
  """
  @spec delete_webhook_endpoint(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def delete_webhook_endpoint(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :delete,
      "/v1/webhooks/endpoints/#{id}",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Get Webhook Endpoint

  Get a webhook endpoint by ID.

  **Scopes**: `webhooks:read` `webhooks:write`

  See `PolarExpress.Params.WebhooksGetWebhookEndpointParams` for parameter details.
  """
  @spec get_webhook_endpoint(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.WebhookEndpoint.t()} | {:error, PolarExpress.Error.t()}
  def get_webhook_endpoint(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/webhooks/endpoints/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.WebhookEndpoint)
    )
  end

  @doc """
  List Webhook Deliveries

  List webhook deliveries.

  Deliveries are all the attempts to deliver a webhook event to an endpoint.

  **Scopes**: `webhooks:read` `webhooks:write`

  See `PolarExpress.Params.WebhooksListWebhookDeliveriesParams` for parameter details.
  """
  @spec list_webhook_deliveries(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_webhook_deliveries(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/webhooks/deliveries",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.WebhookDelivery)
    )
  end

  @doc """
  List Webhook Endpoints

  List webhook endpoints.

  **Scopes**: `webhooks:read` `webhooks:write`

  See `PolarExpress.Params.WebhooksListWebhookEndpointsParams` for parameter details.
  """
  @spec list_webhook_endpoints(Client.t(), map(), keyword()) ::
          {:ok, PolarExpress.ListObject.t()} | {:error, PolarExpress.Error.t()}
  def list_webhook_endpoints(client, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :get,
      "/v1/webhooks/endpoints",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.WebhookEndpoint)
    )
  end

  @doc """
  Redeliver Webhook Event

  Schedule the re-delivery of a webhook event.

  **Scopes**: `webhooks:write`

  See `PolarExpress.Params.WebhooksRedeliverWebhookEventParams` for parameter details.
  """
  @spec redeliver_webhook_event(Client.t(), String.t(), map(), keyword()) ::
          {:ok, term()} | {:error, PolarExpress.Error.t()}
  def redeliver_webhook_event(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :post,
      "/v1/webhooks/events/#{id}/redeliver",
      Keyword.merge(opts, params: params)
    )
  end

  @doc """
  Reset Webhook Endpoint Secret

  Regenerate a webhook endpoint secret.

  **Scopes**: `webhooks:write`

  See `PolarExpress.Params.WebhooksResetWebhookEndpointSecretParams` for parameter details.
  """
  @spec reset_webhook_endpoint_secret(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.WebhookEndpoint.t()} | {:error, PolarExpress.Error.t()}
  def reset_webhook_endpoint_secret(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/webhooks/endpoints/#{id}/secret",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.WebhookEndpoint)
    )
  end

  @doc """
  Update Webhook Endpoint

  Update a webhook endpoint.

  **Scopes**: `webhooks:write`

  See `PolarExpress.Params.WebhooksUpdateWebhookEndpointParams` for parameter details.
  """
  @spec update_webhook_endpoint(Client.t(), String.t(), map(), keyword()) ::
          {:ok, PolarExpress.Schemas.WebhookEndpoint.t()} | {:error, PolarExpress.Error.t()}
  def update_webhook_endpoint(client, id, params \\ %{}, opts \\ []) do
    Client.request(
      client,
      :patch,
      "/v1/webhooks/endpoints/#{id}",
      Keyword.merge(opts, params: params, resource: PolarExpress.Schemas.WebhookEndpoint)
    )
  end
end
