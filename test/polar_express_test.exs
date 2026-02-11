defmodule PolarExpressTest do
  use ExUnit.Case

  test "client/1 creates a client with defaults" do
    client = PolarExpress.client("pk_test_123")
    assert client.api_key == "pk_test_123"
    assert client.base_url == "https://api.polar.sh"
    assert client.max_retries == 2
    assert client.finch == PolarExpress.Finch
  end

  test "client/1 with sandbox server" do
    client = PolarExpress.client("pk_test_123", server: :sandbox)
    assert client.base_url == "https://sandbox-api.polar.sh"
  end

  test "client/2 accepts options" do
    client =
      PolarExpress.client("pk_test_123",
        server: :sandbox,
        max_retries: 5
      )

    assert client.base_url == "https://sandbox-api.polar.sh"
    assert client.max_retries == 5
  end

  test "version/0 returns a version string" do
    assert is_binary(PolarExpress.version())
    assert PolarExpress.version() =~ ~r/^\d+\.\d+\.\d+/
  end
end
