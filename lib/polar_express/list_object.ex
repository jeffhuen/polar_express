defmodule PolarExpress.ListObject do
  @moduledoc """
  Represents a Polar paginated list response.

  Polar API responses use `items` for the data array and `pagination` for
  metadata (total_count, max_page).

  ## Auto-paging

      client = PolarExpress.client("pk_test_...")
      {:ok, page} = PolarExpress.Client.request(client, :get, "/v1/customers/")

      page
      |> PolarExpress.ListObject.auto_paging_stream(client)
      |> Enum.take(50)
  """

  alias PolarExpress.Client

  @type t :: %__MODULE__{
          items: [struct() | map()] | nil,
          pagination: map() | nil
        }

  defstruct [:items, :pagination]

  @doc """
  Returns a lazy `Stream` that yields every item across all pages.

  Uses `page` cursor pagination. The stream fetches the next page
  only when consumed (via `Enum` or `Stream` functions).
  """
  @spec auto_paging_stream(t(), Client.t(), String.t(), keyword()) :: Enumerable.t()
  def auto_paging_stream(%__MODULE__{} = page, client, path, opts \\ []) do
    Stream.unfold({page, 1}, fn
      nil ->
        nil

      {%__MODULE__{items: items, pagination: pagination}, current_page} ->
        max_page = (pagination && pagination.max_page) || 0
        next_page = current_page + 1

        next =
          if next_page <= max_page do
            fetch_next_page(client, path, next_page, opts)
          else
            nil
          end

        {items || [], next}
    end)
    |> Stream.flat_map(& &1)
  end

  defp fetch_next_page(client, path, page_num, opts) do
    params = Map.merge(Keyword.get(opts, :params, %{}), %{"page" => page_num})

    case Client.request(client, :get, path, Keyword.merge(opts, params: params)) do
      {:ok, %__MODULE__{} = next_page} -> {next_page, page_num}
      _ -> nil
    end
  end
end
