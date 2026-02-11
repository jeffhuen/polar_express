# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Common Changelog](https://common-changelog.org/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.1] - 2026-02-11

### Changed

- Wire webhook event deserialization through generated `EventTypes` registry instead of hardcoded map in `Webhook`
- Add `@type t`, `@typedoc`, and `@spec` to all generated per-event modules
- Type the `data` field on event structs to the correct schema (e.g., `Order.t()` instead of `map()`)
- Replace `event_type_to_data_ref` string registry with `event_type_to_schema` returning full module atoms
- Populate `event_type_to_module` mapping for all 35 webhook event types

### Removed

- Remove `ObjectTypes` registry module (Stripe-ism, unused by Polar API)
- Remove Stripe dead code from generator: `x-stripeEvent` parsing, thin event support, `lookup_type/0`
- Remove `webhook_data_schemas` from spec struct (now derived from `event_types`)

### Fixed

- Fix package description exceeding Hex.pm 300-character limit
- Remove missing `.formatter.exs` from package file list
- Fix generator outputting registry files to `lib/stripe/` instead of `lib/polar_express/`
- Fix `EventTypes.event_type_to_data_ref` mapping all events to `nil`
- Fix doctest in `Naming.module_to_path/1` referencing `lib/stripe/`

## v0.1.0

Initial release.

### Features

- Full API coverage (31 service modules matching the JavaScript SDK layout)
- Auto-generated from the Polar OpenAPI spec
- Typed Elixir structs for 30 resource types with inner type deserialization
- List pagination (`ListObject.auto_paging_stream/3`)
- Webhook signature verification via standardwebhooks (`Webhook.construct_event/4`)
- `WebhookPlug` for Plug/Phoenix integration
- OAuth support (`authorize_url`, `token`, `deauthorize`)
- Multipart file uploads
- Streaming response support (`Client.stream_request/6`)
- Raw request support (`Client.raw_request/4`)
- Per-event typed modules (36 event types with nested data structs)
- Ownership-based test stubs (`PolarExpress.Test`)
- Retry with exponential backoff and jitter
- Telemetry events for request lifecycle
- Finch HTTP client (Mint + NimblePool)
- RustyJSON for fast JSON parsing (Rust NIF)
- 1:1 feature parity with the official JavaScript SDK
