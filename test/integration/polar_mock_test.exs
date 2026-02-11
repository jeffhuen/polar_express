defmodule PolarExpress.Integration.PolarMockTest do
  @moduledoc """
  Integration tests against a Polar API mock server.

  These tests are tagged :integration and require a mock server.

  Run with:

      mix test --include integration
  """
  use ExUnit.Case

  @moduletag :integration

  @client PolarExpress.client("polar_test_123",
            base_url: "http://localhost:12111",
            max_retries: 0
          )

  setup_all do
    case :gen_tcp.connect(~c"localhost", 12_111, [], 1_000) do
      {:ok, socket} ->
        :gen_tcp.close(socket)
        :ok

      {:error, _} ->
        raise "Polar mock server not running on localhost:12111."
    end
  end

  # -- Deserialization --------------------------------------------------------

  describe "deserialization" do
    test "GET /v1/customers/ returns ListObject with items" do
      {:ok, result} = PolarExpress.Client.request(@client, :get, "/v1/customers/")

      assert %PolarExpress.ListObject{} = result
      assert is_list(result.items)
      assert is_map(result.pagination)
    end
  end

  # -- Pagination wrappers ----------------------------------------------------

  describe "list pagination" do
    test "ListObject has correct pagination fields" do
      {:ok, result} =
        PolarExpress.Client.request(@client, :get, "/v1/customers/", params: %{"limit" => 3})

      assert %PolarExpress.ListObject{} = result
      assert is_integer(result.pagination.total_count)
      assert is_integer(result.pagination.max_page)
    end

    test "auto_paging_stream yields items" do
      {:ok, page} =
        PolarExpress.Client.request(@client, :get, "/v1/customers/", params: %{"limit" => 2})

      items =
        page
        |> PolarExpress.ListObject.auto_paging_stream(@client, "/v1/customers/")
        |> Enum.take(5)

      assert is_list(items)
      assert items != []
    end
  end

  # -- Error handling ---------------------------------------------------------

  describe "error responses" do
    test "404 returns an error tuple" do
      {:error, error} = PolarExpress.Client.request(@client, :get, "/v1/not_a_real_resource")

      assert %PolarExpress.Error{} = error
      assert error.http_status == 404
    end
  end
end
