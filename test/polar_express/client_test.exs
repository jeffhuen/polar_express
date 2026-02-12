defmodule PolarExpress.ClientTest do
  use ExUnit.Case, async: true

  alias PolarExpress.Client

  describe "client/0 (from config)" do
    setup do
      on_exit(fn ->
        Application.delete_env(:polar_express, :api_key)
        Application.delete_env(:polar_express, :max_retries)
        Application.delete_env(:polar_express, :server)
        Application.delete_env(:polar_express, :webhook_secret)
      end)

      :ok
    end

    test "creates client from application config" do
      Application.put_env(:polar_express, :api_key, "pk_test_from_config")
      client = PolarExpress.client()
      assert client.api_key == "pk_test_from_config"
    end

    test "raises when api_key not configured" do
      Application.delete_env(:polar_express, :api_key)

      assert_raise ArgumentError, ~r/Polar API key not configured/, fn ->
        PolarExpress.client()
      end
    end

    test "merges config options into client" do
      Application.put_env(:polar_express, :api_key, "pk_test_cfg")
      Application.put_env(:polar_express, :max_retries, 5)
      Application.put_env(:polar_express, :server, :sandbox)

      client = PolarExpress.client()
      assert client.api_key == "pk_test_cfg"
      assert client.max_retries == 5
      assert client.server == :sandbox
    end

    test "ignores non-client config keys like webhook_secret" do
      Application.put_env(:polar_express, :api_key, "pk_test_cfg")
      Application.put_env(:polar_express, :webhook_secret, "whsec_123")

      client = PolarExpress.client()
      assert client.api_key == "pk_test_cfg"
      # webhook_secret is not a field on Client struct — no crash
    end
  end

  describe "client/1 (keyword overrides)" do
    setup do
      on_exit(fn ->
        Application.delete_env(:polar_express, :api_key)
        Application.delete_env(:polar_express, :max_retries)
      end)

      :ok
    end

    test "overrides config with keyword opts" do
      Application.put_env(:polar_express, :api_key, "pk_test_cfg")
      Application.put_env(:polar_express, :max_retries, 5)

      client = PolarExpress.client(max_retries: 10)
      assert client.api_key == "pk_test_cfg"
      assert client.max_retries == 10
    end

    test "keyword opts can provide api_key" do
      client = PolarExpress.client(api_key: "pk_test_kwarg")
      assert client.api_key == "pk_test_kwarg"
    end
  end

  describe "client/2 (explicit key + opts)" do
    setup do
      on_exit(fn ->
        Application.delete_env(:polar_express, :max_retries)
      end)

      :ok
    end

    test "explicit key takes precedence over config" do
      Application.put_env(:polar_express, :api_key, "pk_test_cfg")
      client = PolarExpress.client("pk_test_explicit")
      assert client.api_key == "pk_test_explicit"
    end

    test "merges config defaults with explicit opts" do
      Application.put_env(:polar_express, :max_retries, 5)
      client = PolarExpress.client("pk_test_key", server: :sandbox)
      assert client.api_key == "pk_test_key"
      assert client.max_retries == 5
      assert client.server == :sandbox
    end

    test "explicit opts override config" do
      Application.put_env(:polar_express, :max_retries, 5)
      client = PolarExpress.client("pk_test_key", max_retries: 10)
      assert client.max_retries == 10
    end
  end

  describe "struct defaults" do
    test "has correct default values" do
      client = %Client{api_key: "pk_test"}
      assert client.base_url == "https://api.polar.sh"
      assert client.server == :production
      assert client.max_retries == 2
      assert client.timeout_ms == 30_000
      assert client.finch == PolarExpress.Finch
    end
  end

  describe "request/4 with stubs" do
    test "successful GET request" do
      PolarExpress.Test.stub(fn %{method: :get, url: url} ->
        assert url =~ "/v1/organizations/org_123"
        {200, [], ~s({"id": "org_123", "name": "My Org"})}
      end)

      client = PolarExpress.client("pk_test_123")
      {:ok, data} = Client.request(client, :get, "/v1/organizations/org_123")

      assert data["id"] == "org_123"
      assert data["name"] == "My Org"
    end

    test "successful POST with JSON params" do
      PolarExpress.Test.stub(fn %{method: :post, body: body, headers: headers} ->
        assert List.keyfind(headers, "content-type", 0) ==
                 {"content-type", "application/json"}

        decoded = JSON.decode!(body)
        assert decoded["email"] == "jane@example.com"
        assert decoded["name"] == "Jane"

        {200, [], ~s({"id": "cust_new", "email": "jane@example.com"})}
      end)

      client = PolarExpress.client("pk_test_123")

      {:ok, data} =
        Client.request(client, :post, "/v1/customers/",
          params: %{email: "jane@example.com", name: "Jane"}
        )

      assert data["id"] == "cust_new"
    end

    test "GET request with query params" do
      PolarExpress.Test.stub(fn %{method: :get, url: url} ->
        assert url =~ "page=1"
        assert url =~ "limit=10"
        {200, [], ~s({"items": [], "pagination": {"total_count": 0, "max_page": 1}})}
      end)

      client = PolarExpress.client("pk_test_123")

      {:ok, _data} =
        Client.request(client, :get, "/v1/orders/", params: %{page: 1, limit: 10})
    end

    test "POST without params sends no body" do
      PolarExpress.Test.stub(fn %{method: :post, body: body, headers: headers} ->
        # No content-type header when there's no body
        assert body == nil
        assert List.keyfind(headers, "content-type", 0) == nil
        {200, [], ~s({"id": "sess_123"})}
      end)

      client = PolarExpress.client("pk_test_123")
      {:ok, data} = Client.request(client, :post, "/v1/customer-sessions/")
      assert data["id"] == "sess_123"
    end

    test "sends authorization header" do
      PolarExpress.Test.stub(fn %{headers: headers} ->
        assert List.keyfind(headers, "authorization", 0) ==
                 {"authorization", "Bearer pk_test_secret"}

        {200, [], ~s({"ok": true})}
      end)

      client = PolarExpress.client("pk_test_secret")
      assert {:ok, _} = Client.request(client, :get, "/v1/organizations/")
    end

    test "sends accept and user-agent headers" do
      PolarExpress.Test.stub(fn %{headers: headers} ->
        assert List.keyfind(headers, "accept", 0) == {"accept", "application/json"}

        {_, ua} = List.keyfind(headers, "user-agent", 0)
        assert ua =~ "polar-express/elixir"

        {200, [], ~s({"ok": true})}
      end)

      client = PolarExpress.client("pk_test_123")
      assert {:ok, _} = Client.request(client, :get, "/v1/organizations/")
    end

    test "returns error for 404 response" do
      PolarExpress.Test.stub(fn _req ->
        body =
          JSON.encode!(%{
            "type" => "ResourceNotFound",
            "detail" => "Organization not found."
          })

        {404, [{"x-request-id", "req_abc"}], body}
      end)

      client = PolarExpress.client("pk_test_123")
      {:error, error} = Client.request(client, :get, "/v1/organizations/org_bad")

      assert error.type == :resource_not_found
      assert error.message == "Organization not found."
      assert error.detail == "Organization not found."
      assert error.error_code == "ResourceNotFound"
      assert error.request_id == "req_abc"
      assert error.http_status == 404
    end

    test "returns error for 422 validation error" do
      PolarExpress.Test.stub(fn _req ->
        body =
          JSON.encode!(%{
            "type" => "HttpValidationError",
            "detail" => "Invalid parameters provided."
          })

        {422, [{"x-request-id", "req_val"}], body}
      end)

      client = PolarExpress.client("pk_test_123")
      {:error, error} = Client.request(client, :post, "/v1/products/", params: %{})

      assert error.type == :validation_error
      assert error.message == "Invalid parameters provided."
      assert error.http_status == 422
    end

    test "returns error for 401 authentication error" do
      PolarExpress.Test.stub(fn _req ->
        body = JSON.encode!(%{"detail" => "Invalid API key."})
        {401, [], body}
      end)

      client = PolarExpress.client("pk_bad_key")
      {:error, error} = Client.request(client, :get, "/v1/organizations/")

      assert error.type == :authentication_error
      assert error.message == "Invalid API key."
      assert error.http_status == 401
    end

    test "retries on 500 and eventually succeeds" do
      # Use a counter in the process dictionary to track attempts
      Process.put(:attempt, 0)

      PolarExpress.Test.stub(fn _req ->
        attempt = Process.get(:attempt)
        Process.put(:attempt, attempt + 1)

        if attempt == 0 do
          {500, [], ~s({"detail": "Internal server error"})}
        else
          {200, [], ~s({"id": "org_123"})}
        end
      end)

      client = PolarExpress.client("pk_test_123", max_retries: 2)
      {:ok, data} = Client.request(client, :get, "/v1/organizations/org_123")

      assert data["id"] == "org_123"
      assert Process.get(:attempt) == 2
    end

    test "exhausts retries and returns error" do
      PolarExpress.Test.stub(fn _req ->
        {500, [], ~s({"detail": "Internal server error"})}
      end)

      client = PolarExpress.client("pk_test_123", max_retries: 1)
      {:error, error} = Client.request(client, :get, "/v1/organizations/")

      assert error.type == :api_error
      assert error.http_status == 500
    end

    test "does not retry on 400 client errors" do
      Process.put(:attempt_count, 0)

      PolarExpress.Test.stub(fn _req ->
        count = Process.get(:attempt_count)
        Process.put(:attempt_count, count + 1)
        {400, [], ~s({"detail": "Bad request"})}
      end)

      client = PolarExpress.client("pk_test_123", max_retries: 3)
      {:error, _} = Client.request(client, :get, "/v1/organizations/")

      # Should only be called once — no retries for 400
      assert Process.get(:attempt_count) == 1
    end

    test "retries on 429 rate limit" do
      Process.put(:rate_limit_attempt, 0)

      PolarExpress.Test.stub(fn _req ->
        attempt = Process.get(:rate_limit_attempt)
        Process.put(:rate_limit_attempt, attempt + 1)

        if attempt == 0 do
          {429, [{"retry-after", "1"}], ~s({"detail": "Too many requests"})}
        else
          {200, [], ~s({"id": "org_123"})}
        end
      end)

      client = PolarExpress.client("pk_test_123", max_retries: 2)
      {:ok, data} = Client.request(client, :get, "/v1/organizations/org_123")

      assert data["id"] == "org_123"
      assert Process.get(:rate_limit_attempt) == 2
    end

    test "builds full URL from base_url + path" do
      PolarExpress.Test.stub(fn %{url: url} ->
        assert url == "https://api.polar.sh/v1/organizations/"
        {200, [], ~s({"items": [], "pagination": {"total_count": 0, "max_page": 1}})}
      end)

      client = PolarExpress.client("pk_test_123")
      assert {:ok, _} = Client.request(client, :get, "/v1/organizations/")
    end
  end

  describe "typed responses via resource option" do
    test "GET single resource returns typed struct" do
      PolarExpress.Test.stub(fn %{method: :get, url: url} ->
        assert url =~ "/v1/customers/cust_123"

        body =
          JSON.encode!(%{
            "id" => "cust_123",
            "email" => "alice@example.com",
            "name" => "Alice",
            "email_verified" => true,
            "billing_address" => %{
              "country" => "US",
              "city" => "San Francisco",
              "line1" => "123 Main St"
            },
            "members" => [
              %{"id" => "mem_1", "email" => "alice@example.com", "name" => "Alice"}
            ]
          })

        {200, [], body}
      end)

      client = PolarExpress.client("pk_test_123")

      {:ok, customer} =
        Client.request(client, :get, "/v1/customers/cust_123",
          resource: PolarExpress.Schemas.CustomerWithMembers
        )

      assert %PolarExpress.Schemas.CustomerWithMembers{} = customer
      assert customer.id == "cust_123"
      assert customer.email == "alice@example.com"
      assert customer.email_verified == true

      assert %PolarExpress.Schemas.Address{} = customer.billing_address
      assert customer.billing_address.country == "US"
      assert customer.billing_address.city == "San Francisco"

      assert [%PolarExpress.Schemas.Member{} = member] = customer.members
      assert member.id == "mem_1"
    end

    test "GET paginated list returns ListObject with typed items" do
      PolarExpress.Test.stub(fn %{method: :get} ->
        body =
          JSON.encode!(%{
            "items" => [
              %{"id" => "sub_1", "status" => "active", "currency" => "usd"},
              %{"id" => "sub_2", "status" => "canceled", "currency" => "eur"}
            ],
            "pagination" => %{"total_count" => 25, "max_page" => 3}
          })

        {200, [], body}
      end)

      client = PolarExpress.client("pk_test_123")

      {:ok, result} =
        Client.request(client, :get, "/v1/subscriptions/",
          resource: PolarExpress.Schemas.Subscription
        )

      assert %PolarExpress.ListObject{} = result
      assert result.pagination.total_count == 25
      assert result.pagination.max_page == 3

      assert [
               %PolarExpress.Schemas.Subscription{} = s1,
               %PolarExpress.Schemas.Subscription{} = s2
             ] = result.items

      assert s1.id == "sub_1"
      assert s1.status == "active"
      assert s2.id == "sub_2"
      assert s2.status == "canceled"
    end

    test "without resource option returns raw map (backward compat)" do
      PolarExpress.Test.stub(fn _req ->
        {200, [], ~s({"id": "cust_123", "email": "alice@example.com"})}
      end)

      client = PolarExpress.client("pk_test_123")
      {:ok, data} = Client.request(client, :get, "/v1/customers/cust_123")

      assert is_map(data)
      refute is_struct(data)
      assert data["id"] == "cust_123"
    end
  end

  describe "telemetry" do
    setup do
      ref = make_ref()
      pid = self()

      :telemetry.attach(
        "test-start-#{inspect(ref)}",
        [:polar_express, :request, :start],
        &__MODULE__.handle_telemetry_event/4,
        {pid, ref}
      )

      :telemetry.attach(
        "test-stop-#{inspect(ref)}",
        [:polar_express, :request, :stop],
        &__MODULE__.handle_telemetry_event/4,
        {pid, ref}
      )

      on_exit(fn ->
        :telemetry.detach("test-start-#{inspect(ref)}")
        :telemetry.detach("test-stop-#{inspect(ref)}")
      end)

      %{ref: ref}
    end

    test "emits start and stop events on success", %{ref: ref} do
      PolarExpress.Test.stub(fn _req ->
        {200, [{"x-request-id", "req_test_123"}], ~s({"id": "org_1"})}
      end)

      client = PolarExpress.client("pk_test_123")
      {:ok, _} = Client.request(client, :get, "/v1/organizations/org_1")

      assert_receive {:telemetry_start, ^ref, [:polar_express, :request, :start],
                      %{system_time: _}, %{method: :get, path: "/v1/organizations/org_1"}}

      assert_receive {:telemetry_stop, ^ref, [:polar_express, :request, :stop],
                      %{duration: duration},
                      %{
                        method: :get,
                        path: "/v1/organizations/org_1",
                        server: :production,
                        http_status: 200,
                        num_retries: 0,
                        request_id: "req_test_123"
                      }}

      assert is_integer(duration) and duration > 0
    end

    test "includes http_status and error on failure", %{ref: ref} do
      PolarExpress.Test.stub(fn _req ->
        body =
          JSON.encode!(%{"type" => "ResourceNotFound", "detail" => "Not found"})

        {404, [{"x-request-id", "req_fail"}], body}
      end)

      client = PolarExpress.client("pk_test_123")
      {:error, _} = Client.request(client, :get, "/v1/organizations/bad")

      assert_receive {:telemetry_stop, ^ref, _, %{duration: _},
                      %{
                        http_status: 404,
                        num_retries: 0,
                        request_id: "req_fail",
                        error: %PolarExpress.Error{}
                      }}
    end

    test "reports num_retries after retry", %{ref: ref} do
      Process.put(:telemetry_attempt, 0)

      PolarExpress.Test.stub(fn _req ->
        attempt = Process.get(:telemetry_attempt)
        Process.put(:telemetry_attempt, attempt + 1)

        if attempt == 0 do
          {500, [{"x-request-id", "req_retry_0"}], ~s({"detail": "Server error"})}
        else
          {200, [{"x-request-id", "req_retry_1"}], ~s({"id": "org_ok"})}
        end
      end)

      client = PolarExpress.client("pk_test_123", max_retries: 2)
      {:ok, _} = Client.request(client, :get, "/v1/organizations/")

      assert_receive {:telemetry_stop, ^ref, _, _,
                      %{http_status: 200, num_retries: 1, request_id: "req_retry_1"}}
    end

    test "handles nil request_id when no header present", %{ref: ref} do
      PolarExpress.Test.stub(fn _req ->
        {200, [], ~s({"id": "org_1"})}
      end)

      client = PolarExpress.client("pk_test_123")
      {:ok, _} = Client.request(client, :get, "/v1/organizations/org_1")

      assert_receive {:telemetry_stop, ^ref, _, _, %{request_id: nil}}
    end

    test "includes server in telemetry metadata", %{ref: ref} do
      PolarExpress.Test.stub(fn _req ->
        {200, [], ~s({"ok": true})}
      end)

      client = PolarExpress.client("pk_test_123", server: :sandbox)
      {:ok, _} = Client.request(client, :get, "/v1/organizations/")

      assert_receive {:telemetry_start, ^ref, _, _, %{server: :sandbox}}
      assert_receive {:telemetry_stop, ^ref, _, _, %{server: :sandbox}}
    end
  end

  def handle_telemetry_event(event, measurements, metadata, {pid, ref}) do
    case event do
      [:polar_express, :request, :start] ->
        send(pid, {:telemetry_start, ref, event, measurements, metadata})

      [:polar_express, :request, :stop] ->
        send(pid, {:telemetry_stop, ref, event, measurements, metadata})
    end
  end
end
