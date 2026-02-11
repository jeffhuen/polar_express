# Testing

`PolarExpress.Test` provides process-scoped HTTP stubs via NimbleOwnership, so
your tests can run with `async: true` without interference.

## Setup

Start the test stub server in your `test/test_helper.exs`:

```elixir
PolarExpress.Test.start()
ExUnit.start()
```

## Stubbing Requests

Use `PolarExpress.Test.stub/1` to define how the HTTP layer responds. The stub
function receives a map with `:method`, `:url`, `:headers`, and `:body`,
and returns a `{status, headers, body}` tuple:

```elixir
defmodule MyApp.BillingTest do
  use ExUnit.Case, async: true

  test "creates a customer" do
    PolarExpress.Test.stub(fn %{method: :post, url: url} ->
      assert url =~ "/v1/customers"
      {200, [], ~s({"id": "cus_123", "email": "jane@example.com"})}
    end)

    client = PolarExpress.client("pk_test_123")

    {:ok, customer} = PolarExpress.Services.CustomersService.create_customer(client, %{
      email: "jane@example.com"
    })

    assert customer.id == "cus_123"
  end
end
```

## Asserting on Request Parameters

The stub receives the full request, so you can assert on the body, headers,
or URL parameters:

```elixir
test "sends correct params" do
  PolarExpress.Test.stub(fn %{method: :post, body: body} ->
    params = JSON.decode!(body)
    assert params["email"] == "jane@example.com"
    {200, [], ~s({"id": "cus_123", "email": "jane@example.com"})}
  end)

  client = PolarExpress.client("pk_test_123")
  {:ok, _} = PolarExpress.Services.CustomersService.create_customer(client, %{email: "jane@example.com"})
end
```

## Simulating Errors

Return non-200 status codes to test error handling:

```elixir
test "handles validation error" do
  PolarExpress.Test.stub(fn _ ->
    {422, [],
     ~s({"error": {"type": "validation_error", "message": "Invalid email address."}})}
  end)

  client = PolarExpress.client("pk_test_123")
  {:error, err} = PolarExpress.Services.CustomersService.create_customer(client, %{email: "invalid"})

  assert err.type == :validation_error
  assert err.message =~ "Invalid"
end
```

## Process Isolation

Stubs are scoped to the test process that defines them. This means:

- **`async: true` works** — concurrent tests don't interfere with each other
- **No shared state** — each test sets up its own stubs independently
- **Automatic cleanup** — stubs are removed when the test process exits

Under the hood, `PolarExpress.Test` uses `NimbleOwnership` to associate stubs
with the calling process. If your test spawns child processes that make
Polar API calls, you can allow them to share the parent's stubs:

```elixir
test "works in spawned processes" do
  PolarExpress.Test.stub(fn _ ->
    {200, [], ~s({"id": "cus_123", "object": "customer"})}
  end)

  # Allow the Task process to use this test's stubs
  task = Task.async(fn ->
    client = PolarExpress.client("pk_test_123")
    PolarExpress.Services.CustomersService.get_customer(client, "cus_123")
  end)

  assert {:ok, customer} = Task.await(task)
  assert customer.id == "cus_123"
end
```

## Tips

- **Keep stubs minimal.** Only include the fields your test actually checks.
  The deserializer handles missing fields gracefully.
- **Use `async: true`.** The ownership model is designed for it.
- **Don't stub the webhook.** Use `PolarExpress.Webhook.construct_event/4` directly
  in webhook tests — it's a pure function that doesn't make HTTP calls.
