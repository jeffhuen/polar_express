# Upgrade from 0.2 to 0.3

PolarExpress 0.3 targets Polar API version `2027-01`. PolarExpress 0.2 sent no version, so Polar used its Current version. This guide covers the changes you make in your own code. The [changelog](../CHANGELOG.md) lists every change.

The first two steps and the last step apply to every app. The steps between them apply only if your code uses what they name, and each of those starts with that condition.

## Update the dependency and compile

Change the requirement in `mix.exs`:

```elixir
{:polar_express, "~> 0.3.0"}
```

Then run:

```bash
mix deps.update polar_express
mix compile
```

The compiler reports removed modules and struct literals that use a removed key. It cannot report a removed field that you read as `struct.field`, because that fails at run time with a `KeyError`. Search your code for the names in the steps below, and run your tests.

## Check the API version

The client sends `Polar-Version: 2027-01` on every request. `PolarExpress.ApiVersion.version/0` returns that value.

Polar supports each API version for about nine months. After that, Polar answers requests for it with `404 Not Found`. Upgrade PolarExpress before the version it targets is removed. If every request fails with `404`, check the version first.

Do not send an older version with 0.3. The structs match `2027-01`, so a response for an older version can have fields that the structs do not know. To send another version for a client or for one request, pass `:api_version`. The `PolarExpress` module documentation describes the option.

## Update webhook endpoints

If you receive webhooks, set the version of each endpoint. A webhook endpoint has its own `api_version`, and a PolarExpress upgrade does not change it. PolarExpress 0.3 casts every event to the structs of `2027-01`. An endpoint that still sends `2026-10` payloads gives events with fields that differ from those structs.

Change an existing endpoint:

```elixir
PolarExpress.Services.WebhooksService.update_webhook_endpoint(client, endpoint_id, %{
  api_version: "2027-01"
})
```

Polar applies the new version to events that it creates afterward. Events that already exist keep their version.

When you create an endpoint, set `api_version` yourself. Polar uses its Current version when you omit it.

## Replace fixed discount amounts

If you create or read fixed discounts, replace `amount` and `currency` with `amounts`. `amounts` maps a currency code to an amount.

```elixir
# 0.2
PolarExpress.Services.DiscountsService.create_discount(client, %{
  type: "fixed",
  name: "Launch",
  duration: "once",
  amount: 500,
  currency: "usd"
})

# 0.3
PolarExpress.Services.DiscountsService.create_discount(client, %{
  type: "fixed",
  name: "Launch",
  duration: "once",
  amounts: %{"usd" => 500}
})
```

Where you read `discount.amount`, read `discount.amounts["usd"]`. The change covers the checkout discount structs, the `Discount*` structs, `DiscountUpdate`, and `PolarExpress.Resources.Discounts`.

## Replace seat tiers

If you create or read seat-based prices, replace `seat_tiers` with `tiers`.

```elixir
# 0.2
%{
  amount_type: "seat_based",
  price_currency: "usd",
  seat_tiers: %{
    seat_tier_type: "volume",
    tiers: [
      %{min_seats: 1, max_seats: 10, price_per_seat: 1000},
      %{min_seats: 11, max_seats: nil, price_per_seat: 800}
    ]
  }
}

# 0.3
%{
  amount_type: "seat_based",
  price_currency: "usd",
  minimum_units: 1,
  tiers: %{
    type: "volume",
    tiers: [
      %{bound: 10, unit_amount: 1000},
      %{bound: nil, unit_amount: 800}
    ]
  }
}
```

A tier now ends at its `bound` and starts where the previous tier ended. The first tier starts at zero. Use `bound: nil` for a last tier that has no upper limit. `unit_amount` replaces `price_per_seat` and is in cents.

`minimum_units` is the smallest quantity that a customer can buy. It defaults to 1. Polar takes `maximum_units` from the bound of the last tier, so you read it on a price but do not send it.

Where you read `price.seat_tiers`, read `price.tiers`.

## Update checkouts and checkout links

If you read `product_price_id` from a checkout, read `product_id`. Polar had marked `product_price_id` as deprecated, and 0.3 removes it from the checkout structs. `CheckoutUpdate` no longer accepts it, so send `product_id` to change the product.

If you create checkout links with `product_id` or `product_price_id`, use `products` with a list of product IDs:

```elixir
PolarExpress.Services.CheckoutLinksService.create_checkout_link(client, %{
  payment_processor: "stripe",
  products: [product_id]
})
```

If you match on `LegacyRecurringProductPrice`, `LegacyRecurringProductPriceFixed`, or `LegacyRecurringProductPriceCustom`, match on the `ProductPrice` structs instead. The `prices` of a checkout product no longer contain legacy prices.

## Update organization code

If you pass `details` to organization create or update, remove `about`, `customer_acquisition`, `future_annual_revenue`, `intended_use`, and `previous_annual_revenue`. The `details` parameter now takes `OrganizationDetailsInput`, which does not have them.

If you read or send organization feature settings, remove `member_model_enabled`. Also remove `compass_enabled` and `meter_cycling_enabled` from `OrganizationFeatureSettings`.

## Check for removed modules

If your code names a module that 0.3 removed, remove it or use the replacement that the steps above give. The [changelog](../CHANGELOG.md) lists all 18 removed modules.

`PolarExpress.Resources.BenefitGrants` still exists, but it now describes one benefit grant. In 0.2 it had `items` and `pagination`.

## Run your tests

Run your tests. Then try the calls that changed in the Polar sandbox:

```elixir
client = PolarExpress.client(token, server: :sandbox)
```

Check your logs for `404` responses, which mean that Polar does not accept the version that the client sends.
