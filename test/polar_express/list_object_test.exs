defmodule PolarExpress.ListObjectTest do
  use ExUnit.Case, async: true

  alias PolarExpress.ListObject

  # -- Page-based ListObject auto-paging ---------------------------------------

  describe "ListObject.auto_paging_stream/4" do
    test "single page (max_page == 1) yields items and stops" do
      PolarExpress.Test.stub(fn _req ->
        flunk("should not fetch another page")
      end)

      page = %ListObject{
        items: [
          %{"id" => "cust_1", "name" => "Alice"},
          %{"id" => "cust_2", "name" => "Bob"}
        ],
        pagination: %{total_count: 2, max_page: 1}
      }

      client = PolarExpress.client("polar_test_123")
      items = page |> ListObject.auto_paging_stream(client, "/v1/customers/") |> Enum.to_list()

      assert length(items) == 2
      assert %{"id" => "cust_1"} = hd(items)
    end

    test "multi-page iteration uses page numbers" do
      Process.put(:page_call, 0)

      PolarExpress.Test.stub(fn %{url: url} ->
        call = Process.get(:page_call)
        Process.put(:page_call, call + 1)

        assert url =~ "page=2"

        {200, [],
         JSON.encode!(%{
           "items" => [%{"id" => "cust_3", "name" => "Charlie"}],
           "pagination" => %{"total_count" => 3, "max_page" => 2}
         })}
      end)

      page = %ListObject{
        items: [
          %{"id" => "cust_1", "name" => "Alice"},
          %{"id" => "cust_2", "name" => "Bob"}
        ],
        pagination: %{total_count: 3, max_page: 2}
      }

      client = PolarExpress.client("polar_test_123")
      items = page |> ListObject.auto_paging_stream(client, "/v1/customers/") |> Enum.to_list()

      assert length(items) == 3
      assert Enum.map(items, & &1["id"]) == ["cust_1", "cust_2", "cust_3"]
      assert Process.get(:page_call) == 1
    end

    test "three pages iteration" do
      Process.put(:page_call, 0)

      PolarExpress.Test.stub(fn %{url: url} ->
        call = Process.get(:page_call)
        Process.put(:page_call, call + 1)

        case call do
          0 ->
            assert url =~ "page=2"

            {200, [],
             JSON.encode!(%{
               "items" => [%{"id" => "cust_3"}],
               "pagination" => %{"total_count" => 4, "max_page" => 3}
             })}

          1 ->
            assert url =~ "page=3"

            {200, [],
             JSON.encode!(%{
               "items" => [%{"id" => "cust_4"}],
               "pagination" => %{"total_count" => 4, "max_page" => 3}
             })}
        end
      end)

      page = %ListObject{
        items: [
          %{"id" => "cust_1"},
          %{"id" => "cust_2"}
        ],
        pagination: %{total_count: 4, max_page: 3}
      }

      client = PolarExpress.client("polar_test_123")
      items = page |> ListObject.auto_paging_stream(client, "/v1/customers/") |> Enum.to_list()

      assert Enum.map(items, & &1["id"]) == ["cust_1", "cust_2", "cust_3", "cust_4"]
      assert Process.get(:page_call) == 2
    end

    test "stops on error response" do
      PolarExpress.Test.stub(fn _req ->
        {500, [], ~s({"error": {"message": "Internal error"}})}
      end)

      page = %ListObject{
        items: [%{"id" => "cust_1"}],
        pagination: %{total_count: 10, max_page: 5}
      }

      client = PolarExpress.client("polar_test_123", max_retries: 0)
      items = page |> ListObject.auto_paging_stream(client, "/v1/customers/") |> Enum.to_list()

      # Only gets the first page's items, stops gracefully on error
      assert length(items) == 1
      assert hd(items)["id"] == "cust_1"
    end

    test "laziness -- Enum.take does not exhaust all pages" do
      Process.put(:page_call, 0)

      PolarExpress.Test.stub(fn _req ->
        Process.put(:page_call, Process.get(:page_call) + 1)

        {200, [],
         JSON.encode!(%{
           "items" => [%{"id" => "cust_next"}],
           "pagination" => %{"total_count" => 100, "max_page" => 50}
         })}
      end)

      page = %ListObject{
        items: [
          %{"id" => "cust_1"},
          %{"id" => "cust_2"},
          %{"id" => "cust_3"}
        ],
        pagination: %{total_count: 100, max_page: 50}
      }

      client = PolarExpress.client("polar_test_123")
      # Take only 4 items from a large stream -- should not fetch all pages
      items = page |> ListObject.auto_paging_stream(client, "/v1/customers/") |> Enum.take(4)

      assert length(items) == 4
      # Stream.unfold evaluates one-ahead, but should not run unbounded
      assert Process.get(:page_call) <= 2
    end

    test "nil pagination defaults to single page" do
      PolarExpress.Test.stub(fn _req ->
        flunk("should not fetch another page")
      end)

      page = %ListObject{
        items: [%{"id" => "cust_1"}],
        pagination: nil
      }

      client = PolarExpress.client("polar_test_123")
      items = page |> ListObject.auto_paging_stream(client, "/v1/customers/") |> Enum.to_list()

      assert length(items) == 1
    end
  end
end
