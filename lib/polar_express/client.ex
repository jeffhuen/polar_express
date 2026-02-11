defmodule PolarExpress.Client do
  @moduledoc """
  Polar API client. Holds configuration and executes HTTP requests.

  Create a client via `PolarExpress.client/1` or `PolarExpress.client/2`:

      # From application config
      client = PolarExpress.client()

      # With explicit API key
      client = PolarExpress.client("pk_test_...", server: :sandbox)

      # Execute a request
      {:ok, org} = PolarExpress.Client.request(client, :get, "/v1/organizations/")
  """

  alias PolarExpress.{Deserializer, Error}

  @type server :: :production | :sandbox
  @type t :: %__MODULE__{
          api_key: String.t(),
          server: server(),
          base_url: String.t(),
          max_retries: non_neg_integer(),
          timeout_ms: pos_integer(),
          finch: atom()
        }

  defstruct [
    :api_key,
    server: :production,
    base_url: "https://api.polar.sh",
    max_retries: 2,
    timeout_ms: 30_000,
    finch: PolarExpress.Finch
  ]

  @doc """
  Execute an API request.

  ## Options

    * `:params` - Request parameters (map)
  """
  @spec request(t(), atom(), String.t(), keyword()) ::
          {:ok, struct() | map()} | {:error, Error.t()}
  def request(%__MODULE__{} = client, method, path, opts \\ []) do
    {resource_mod, opts} = Keyword.pop(opts, :resource)
    params = Keyword.get(opts, :params, %{})
    url = client.base_url <> path

    headers = build_headers(client, opts)
    {url, headers, body} = encode_request(method, url, headers, params)

    metadata = %{method: method, path: path, server: client.server}
    start_time = System.monotonic_time()

    :telemetry.execute(
      [:polar_express, :request, :start],
      %{system_time: System.system_time()},
      metadata
    )

    cast_opts = if resource_mod, do: [resource: resource_mod], else: []

    {result, resp_meta} =
      execute_with_retries(client, %{method: method, url: url, headers: headers, body: body}, 0, cast_opts)

    duration = System.monotonic_time() - start_time
    stop_metadata = Map.merge(metadata, resp_meta)

    case result do
      {:ok, data} ->
        :telemetry.execute([:polar_express, :request, :stop], %{duration: duration}, stop_metadata)
        {:ok, data}

      {:error, error} ->
        :telemetry.execute(
          [:polar_express, :request, :stop],
          %{duration: duration},
          Map.put(stop_metadata, :error, error)
        )

        {:error, error}
    end
  end

  @doc """
  Execute an API request and return the raw response without deserialization.

  Returns `{:ok, %{status: integer, headers: list, body: binary}}` on success,
  or `{:error, Error.t()}` on failure.
  """
  @spec raw_request(t(), atom(), String.t(), keyword()) ::
          {:ok, %{status: integer(), headers: list(), body: binary()}} | {:error, Error.t()}
  def raw_request(%__MODULE__{} = client, method, path, opts \\ []) do
    params = Keyword.get(opts, :params, %{})
    url = client.base_url <> path

    headers = build_headers(client, opts)
    {url, headers, body} = encode_request(method, url, headers, params)

    case do_request(client, %{method: method, url: url, headers: headers, body: body}) do
      {:ok, status, resp_headers, resp_body} ->
        {:ok, %{status: status, headers: resp_headers, body: resp_body}}

      {:error, reason} ->
        {:error, Error.connection_error("Request failed: #{inspect(reason)}")}
    end
  end

  @doc """
  Execute a streaming API request.

  Streams the response body through `fun`, which receives chunks as they arrive.
  The function signature is `(chunk, acc -> acc)` where chunk is one of:

    * `{:status, integer()}` — HTTP status code
    * `{:headers, [{String.t(), String.t()}]}` — response headers
    * `{:data, binary()}` — body chunk

  Returns `{:ok, acc}` with the final accumulator, or `{:error, Error.t()}`.

  ## Example

      PolarExpress.Client.stream_request(client, :post, "/v1/organizations/",
        params: %{...},
        fun: fn chunk, acc -> [chunk | acc] end,
        acc: []
      )
  """
  @spec stream_request(t(), atom(), String.t(), (term(), acc -> acc), acc, keyword()) ::
          {:ok, acc} | {:error, Error.t()}
        when acc: term()
  def stream_request(%__MODULE__{} = client, method, path, fun, acc, opts \\ []) do
    params = Keyword.get(opts, :params, %{})
    url = client.base_url <> path

    headers = build_headers(client, opts)
    {url, headers, body} = encode_request(method, url, headers, params)

    # Check for test stub first
    case PolarExpress.Test.fetch_stub() do
      {:ok, stub_fn} ->
        {status, resp_headers, resp_body} =
          stub_fn.(%{method: method, url: url, headers: headers, body: body})

        acc = fun.({:status, status}, acc)
        acc = fun.({:headers, resp_headers}, acc)
        acc = fun.({:data, resp_body}, acc)
        {:ok, acc}

      :error ->
        req = Finch.build(method, url, headers, body)

        case Finch.stream(req, client.finch, acc, fun, receive_timeout: client.timeout_ms) do
          {:ok, acc} ->
            {:ok, acc}

          {:error, reason, _acc} ->
            {:error, Error.connection_error("Stream failed: #{inspect(reason)}")}
        end
    end
  end

  # -- Request Encoding -------------------------------------------------------
  # Polar API is JSON-only. Query parameters go in the URL, body is always JSON.

  defp encode_request(method, url, headers, params)
       when method in [:get, :head, :delete] do
    # Query parameters for GET/HEAD/DELETE
    if params == %{} do
      {url, headers, nil}
    else
      {url <> "?" <> URI.encode_query(params), headers, nil}
    end
  end

  defp encode_request(_method, url, headers, params) when params == %{} do
    {url, headers, nil}
  end

  defp encode_request(_method, url, headers, params) do
    # Body for POST/PUT/PATCH: always JSON
    headers = [{"content-type", "application/json"} | headers]
    {url, headers, JSON.encode!(params)}
  end

  # -- HTTP Execution ---------------------------------------------------------

  defp execute_with_retries(client, request, attempt, cast_opts) do
    case do_request(client, request) do
      {:ok, 204, resp_headers, _resp_body} ->
        {{:ok, nil}, response_meta(204, resp_headers, attempt)}

      {:ok, status, resp_headers, resp_body} when status in 200..299 ->
        result = decode_success(resp_body, cast_opts)
        {result, response_meta(status, resp_headers, attempt)}

      {:ok, status, resp_headers, resp_body} ->
        if should_retry?(status, attempt, client.max_retries) do
          Process.sleep(backoff_ms(attempt))
          execute_with_retries(client, request, attempt + 1, cast_opts)
        else
          error = {:error, Error.from_response(status, resp_body, resp_headers)}
          {error, response_meta(status, resp_headers, attempt)}
        end

      {:error, reason} ->
        if attempt < client.max_retries do
          Process.sleep(backoff_ms(attempt))
          execute_with_retries(client, request, attempt + 1, cast_opts)
        else
          error = {:error, Error.connection_error("Request failed: #{inspect(reason)}")}
          {error, response_meta(nil, [], attempt)}
        end
    end
  end

  defp response_meta(http_status, resp_headers, num_retries) do
    request_id =
      case List.keyfind(resp_headers, "x-request-id", 0) do
        {_, id} -> id
        nil -> nil
      end

    %{http_status: http_status, num_retries: num_retries, request_id: request_id}
  end

  defp decode_success(resp_body, cast_opts) do
    case JSON.decode(resp_body) do
      {:ok, data} -> {:ok, Deserializer.cast(data, cast_opts)}
      {:error, _} -> {:ok, %{"raw" => resp_body}}
    end
  end

  # Check for a test stub first; fall through to Finch if none registered.
  defp do_request(client, %{method: method, url: url, headers: headers, body: body} = request) do
    case PolarExpress.Test.fetch_stub() do
      {:ok, stub_fn} ->
        {status, resp_headers, resp_body} = stub_fn.(request)
        {:ok, status, resp_headers, resp_body}

      :error ->
        req = Finch.build(method, url, headers, body)

        case Finch.request(req, client.finch, receive_timeout: client.timeout_ms) do
          {:ok, %Finch.Response{status: status, body: resp_body, headers: resp_headers}} ->
            {:ok, status, resp_headers, resp_body}

          {:error, reason} ->
            {:error, reason}
        end
    end
  end

  defp should_retry?(status, attempt, max_retries) when attempt < max_retries do
    # Retry on network errors and specific status codes (following JavaScript SDK pattern)
    status in [408, 409, 429, 500, 502, 503, 504]
  end

  defp should_retry?(_status, _attempt, _max_retries), do: false

  # Exponential backoff with jitter: 500ms * 2^n, max 60s, +0-50% jitter
  # Matches Polar JavaScript SDK defaults
  defp backoff_ms(attempt) do
    base = min(500 * Integer.pow(2, attempt), 60_000)
    jitter = trunc(base * 0.5 * :rand.uniform())
    base + jitter
  end

  # -- Headers ----------------------------------------------------------------

  defp build_headers(client, opts) do
    api_key = Keyword.get(opts, :api_key, client.api_key)

    [
      {"authorization", "Bearer #{api_key}"},
      {"user-agent", user_agent()},
      {"accept", "application/json"}
    ]
  end

  # -- User-Agent -------------------------------------------------------------

  defp user_agent do
    "polar-express/elixir #{PolarExpress.version()}"
  end
end
