# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Common Changelog](https://common-changelog.org/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.6] - 2026-04-16

### Added

- Customer-portal email-change flow: `request_email_change`, `verify_email_change`, `check_email_change_token`
- Members service with external-id lookups (get/update/delete by external id)
- Metrics service with metric-dashboard CRUD and metrics export
- `pending_subscription_update`, `subscription_updated_event` and related metadata schemas (billing period, discount, product, seats, trial)
- `order_voided_event` and `order_voided_metadata`
- `payment_failed`, `manual_retry_limit_exceeded` event schemas
- Organization legal-entity schemas (`organization_company_legal_entity_schema`, `organization_individual_legal_entity_schema`)
- `meter_unit`, `seat_tier_type`, `tax_behavior_option`, `customer_portal_customer_settings`, `organization_customer_email_settings`
- Expanded coverage on benefits, custom fields, discounts, events, meters, organizations, subscriptions resources

### Changed

- Split `Customer`/`CustomerCreate`/`CustomerState` into individual and team variants (`customer_individual`, `customer_team`, `customer_state_individual`, `customer_state_team`, `customer_individual_create`, `customer_team_create`)
- Rename `OwnerCreate` → `MemberOwnerCreate`
- Rename `ListResource_` → `ListResourcePayment_`
- Expand `presentment_currency` enum values

## [0.1.5] - 2026-03-03

### Changed

- Sync OpenAPI spec — adds feature flag benefits, multi-currency support, removes `CustomerWithMembers` and `MemberSession` schemas, updates customers service to return `Customer` directly
- Decouple client and deserializer tests from generated schemas using stable test fixtures (`test/support/fixtures.ex`) so upstream spec changes no longer break CI

### Fixed

- Fix CI failures caused by upstream Polar API removing `CustomerWithMembers` schema and `recurring_interval` field from `ProductPriceSeatBased`
- Add `membersessions` JS SDK parity alias (service not yet in public OpenAPI spec)

## [0.1.4] - 2026-02-17

### Changed

- Exclude code generator and `mix polar_express.generate` task from hex package — the package is regenerated weekly from the latest Polar OpenAPI spec, so end users only need the generated output; contributors who need immediate regeneration can use `mix polar_express.generate` from the repo. This also drops the `rustyjson` transitive dependency

## [0.1.3] - 2026-02-16

### Fixed

- Use `String.to_existing_atom/1` instead of `String.to_atom/1` when parsing API error type strings to prevent atom table exhaustion from unexpected error types

## [0.1.2] - 2026-02-12

### Added

- Support for `oneOf` / `anyOf` polymorphism (e.g., `BenefitCreate`), generating Union types
- Support for `prefixItems` (tuple arrays) in OpenAPI schemas, resolving to Union lists (e.g., `Customer.tax_id`)

### Fixed

- Correctly generate typed maps for `additionalProperties` (e.g., `CheckoutPublicConfirmed.prices`) instead of generic `map()`
- Add missing `CustomerPortalOAuthAccount` schema to support `oauth_accounts` field throughout the API
- Fix `Enum` module generation to prevent truncation of large value lists (e.g., `CountryAlpha2`)
- Resolve all compiler warnings in generator logic

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
