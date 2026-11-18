# Changelog

## [Unreleased]

Targets Polar API `2027-01`. Polar makes it the Current version in the first week of January 2027. Hold the 0.3.0 release until then, because Polar can change `2027-01` until it freezes the contract. Read [Upgrade from 0.2 to 0.3](guides/upgrading-to-0.3.md) before you update.

### Changed

- Send the API version in the `Polar-Version` header on every request. The default is the version the SDK is generated from, `PolarExpress.ApiVersion.version/0`, which is `2027-01`. Earlier releases sent no header, so Polar used its Current version. Polar supports each version for about nine months and answers a removed version with `404`. Upgrade PolarExpress before the version it targets is removed
- **Breaking:** generate the SDK from Polar API `2027-01`. `priv/openapi/API_VERSION` pins the version
- **Breaking:** replace `amount` and `currency` with `amounts` on fixed discounts. `amounts` maps a currency code to an amount. This affects `CheckoutDiscountFixedOnceForeverDuration`, `CheckoutDiscountFixedRepeatDuration`, `DiscountFixedCreate`, `DiscountFixedOnceForeverDuration`, `DiscountFixedOnceForeverDurationBase`, `DiscountFixedRepeatDuration`, `DiscountFixedRepeatDurationBase`, `DiscountUpdate`, and `Resources.Discounts`
- **Breaking:** replace `seat_tiers` with `tiers` on `ProductPriceSeatBased` and `ProductPriceSeatBasedCreate`. A tier has `bound` and `unit_amount` where it had `min_seats`, `max_seats`, and `price_per_seat`
- **Breaking:** remove `product_price_id` from `Checkout`, `CheckoutConfirmStripe`, `CheckoutPublic`, `CheckoutPublicConfirmed`, `CheckoutUpdate`, `CheckoutUpdatePublic`, and `Resources.Checkouts`
- **Breaking:** remove `LegacyRecurringProductPrice` from the `prices` of `Checkout`, `CheckoutLinkProduct`, `CheckoutProduct`, and `CheckoutPublic`. These lists hold only `ProductPrice` variants
- **Breaking:** create checkout links with `products` only. The spec no longer has the `product_id` and `product_price_id` forms
- **Breaking:** use `OrganizationDetailsInput` for `details` in `OrganizationCreate` and `OrganizationUpdate`. It drops `about`, `customer_acquisition`, `future_annual_revenue`, `intended_use`, and `previous_annual_revenue`
- **Breaking:** remove `member_model_enabled` from `CustomerOrganizationFeatureSettings`, `OrganizationFeatureSettings`, and `OrganizationFeatureSettingsUpdate`. Remove `compass_enabled` and `meter_cycling_enabled` from `OrganizationFeatureSettings`
- **Breaking:** make `Resources.BenefitGrants` describe one benefit grant. It had `items` and `pagination`
- **Breaking:** remove 18 schema modules: `CheckoutLinkCreate`, `CheckoutLinkCreateProduct`, `CheckoutLinkCreateProductPrice`, `CheckoutPriceCreate`, `CheckoutProductCreate`, `LegacyOrganizationStatus`, `LegacyRecurringProductPrice`, `LegacyRecurringProductPriceCustom`, `LegacyRecurringProductPriceFixed`, `LicenseKeyUser`, `OrderUser`, `OrganizationDetails`, `ProductPriceSeatTier`, `ProductPriceSeatTiersInput`, `ProductPriceSeatTiersOutput`, `ProductPriceType`, `SeatTierType`, `SubscriptionUser`. The 0.2.5 spec referenced `CheckoutPriceCreate`, `CheckoutProductCreate`, `LegacyOrganizationStatus`, `LicenseKeyUser`, `OrderUser`, `ProductPriceType`, and `SubscriptionUser` from no endpoint or schema

### Added

- Add `BenefitGrantsService.create_benefit_grant/3`, `update_benefit_grant/4`, and `revoke_benefit_grant/4` for manual benefit grants
- Add `CustomerMetersService.credit_customer_meter/3` and `reverse_customer_meter_credit/4`
- Add `MetersService.get_meter_by_external_id/4` and `WebhooksService.get_webhook_endpoint_by_external_id/4`
- Add `CheckoutProductsExternalCreate`, so a checkout can use `external_products` in place of `products`
- Add list filters. Benefits, meters, and products take `external_id`, `catalog_id`, and `catalog_status`. Checkout sessions, orders (list and export), subscriptions, and metrics take `external_product_id`. Benefit grants take `external_benefit_id`, `external_member_id`, and `member_id`. Customer meters take `external_meter_id`, discounts take `external_id`, and webhook endpoints take `format`
- Add `PolarExpress.ApiVersion` and the `:api_version` option on `PolarExpress.client/2` and on every request. The generator rejects a spec whose `info.version` is not `YYYY-MM`
- Add fields to existing structs:
  - `external_id` on 43 structs and `event_id` on the 42 webhook payload structs
  - `manually_granted_at` and `manually_revoked_at` on 17 benefit grant structs
  - `catalog_id` and `is_current` on 12 structs
  - `trial_payment_setup_required` on 6 checkout link and product structs
  - `payment_method_types` on `CheckoutPublic` and `CheckoutPublicConfirmed`
  - `order`, `order_id`, `subscription`, and `subscription_id` on `GrantedLicenseKey` and `ValidatedLicenseKey`
  - `currency` on `SubscriptionCreateCustomer` and `SubscriptionCreateExternalCustomer`
  - `minimum_units` on `ProductPriceSeatBased` and `ProductPriceSeatBasedCreate`, and `maximum_units` on `ProductPriceSeatBased`
  - `discount_id` and `discount_unset` on `PendingSubscriptionUpdate`
  - `reason` on `MeterCreditedMetadata`
  - `config_as_code_enabled`, `reducer_billing_enabled`, and `staged_events_ingest_enabled` on `OrganizationFeatureSettings`
  - `exclude_free_products`, `new_trial`, and `subscription_cancellation` on `OrganizationNotificationSettings`
- Add 25 schema modules: `AlreadyActiveSubscription`, `AmbiguousExternalMeterID`, `AmbiguousExternalWebhookEndpointID`, `BenefitGrantAlreadyExists`, `BenefitGrantCreate`, `BenefitGrantCreateExternal`, `BenefitGrantUpdate`, `BenefitManuallyGrantedEvent`, `BenefitManuallyRevokedEvent`, `BenefitUnrevokedEvent`, `CatalogStatus`, `CheckoutConfirm`, `CheckoutConfirmSharedPaymentToken`, `CheckoutCreate`, `CheckoutPaymentError`, `CheckoutProductsExternalCreate`, `CustomerMeterCreditExternalIDConflict`, `CustomerMeterCreditNotReversible`, `CustomerMeterCreditsExternalIDCreate`, `CustomerMeterCreditsIDCreate`, `LicenseKeyOrder`, `LicenseKeySubscription`, `OrganizationDetailsInput`, `SSORequiresVerifiedDomain`, and `SharedPaymentTokenError`

## [0.2.5] - 2026-11-17

### Fixed

- Allow `req` 0.7 and later. 0.2.4 required `req ~> 0.6.1`, which also capped it below 0.7, so an app that uses `req` 0.7 could not resolve 0.2.4. The optional `req` requirement is now `>= 0.6.1 and < 1.0.0`, which keeps the security floor ([0.2.5])

## [0.2.4] - 2026-11-17

### Changed

- **Breaking:** regenerate the SDK from the final Polar API `2026-10` spec. Polar's "Align API reference with public endpoints" change removed 12 operations from the published spec, so these functions are removed: `CustomersService.export_customers/3`, `SubscriptionsService.export_subscriptions/3`, `MetricsService.export_metrics/3`, the five metric dashboard functions (list, get, create, update, delete), the customer portal wallets service (list and get), and the customer portal order `confirm_retry_payment` and `get_order_payment_status` calls ([0.2.4])
- **Breaking:** remove about 350 schema modules that the pruned spec no longer defines, such as payouts, organization review, merchant migration, SSO connections, and Compass. `OrdersService.export_orders/3` stays ([0.2.4])
- Pin the Polar API version in `priv/openapi/API_VERSION` (`2026-10`). `scripts/sync_openapi.sh` and `scripts/sync_js.sh` read it, and `latest` selects Polar's in-development Next version ([0.2.4])
- Check that the downloaded spec's `info.version` matches the requested API version ([0.2.4])
- Run the CI build job against the committed spec instead of the newest upstream spec. Only the preview-drift job, which cannot fail the build, tracks `latest` ([0.2.4])

### Added

- Add `ProductsService.delete_product/4` ([0.2.4])
- Add `BadRequest`, `CheckoutLocked`, `CustomerBenefitGrantMember`, and `ProductNotDeletable` schemas ([0.2.4])

### Fixed

- Stop the weekly OpenAPI sync from failing on Polar's unreleased `2027-01` spec, which replaces fixed discount `amount` and `currency` with `amounts` ([0.2.4])
- Require `req ~> 0.6.1` (optional, used by the Igniter installer) for the fixes to the decompression bomb (GHSA-655f-mp8p-96gv) and multipart header injection (GHSA-px9f-whj3-246m) advisories ([0.2.4])

## [0.2.3] - 2026-09-22

### Changed

- Regenerate the SDK from Polar OpenAPI spec 2026-10: 13 new paths, 5 removed paths, 1063 schemas, 42 webhooks ([0.2.3])
- Sync the spec from versioned monorepo files. The sync resolves the latest upstream version when you pass no version ([0.2.3])
- Point parity tooling at the monorepo TypeScript SDK ([0.2.3])

### Fixed

- Quote non-identifier atoms in generated `defstruct` fields and params `@type` keys ([0.2.3])
- Match each generated resource to the schema with its own name. `Resources.Customers` described a Member ([0.2.3])
- Order schema selection deterministically across OTP versions ([0.2.3])
- Declare the `:telemetry` dependency directly ([0.2.3])

## [0.2.2] - 2026-07-03

### Fixed

- Replace dynamic API error atom conversion with an explicit Polar error type map, preserving unknown response body types in `error_code` while falling back to HTTP status for `type` ([0.2.2])
- Use an explicit OpenAPI HTTP method map in the generator instead of dynamic atom conversion ([0.2.2])

## [0.2.1] - 2026-07-03

### Changed

- Simplify generated schema/resource `t()` specs to `%__MODULE__{}` to cut recursive typespec load while preserving docs, structs, params, deserialization metadata, and service return specs ([0.2.1])

## [0.2.0] - 2026-05-22

### Changed

- **Breaking:** require explicit API keys in `PolarExpress.client/1` and `PolarExpress.client/2` instead of reading global application config ([0.2.0])
- **Breaking:** make `PolarExpress.client/0` raise with explicit credential guidance instead of building a config-backed client ([0.2.0])
- **Breaking:** require applications to supervise the default Finch pool explicitly with `PolarExpress.child_spec/1` or pass a custom `:finch` pool ([0.2.0])
- **Breaking:** require `PolarExpress.WebhookPlug` to receive an explicit `:secret` instead of reading `:webhook_secret` from global application config ([0.2.0])
- Return raw response maps from CSV export service functions instead of JSON-decoding export bodies ([0.2.0])
- Resolve polymorphic response variants only when raw JSON keys identify exactly one variant ([0.2.0])

### Added

- Add `PolarExpress.child_spec/1` for supervising the default `PolarExpress.Finch` pool ([0.2.0])
- Add public `response_data` and `raw_response` response types on `PolarExpress.Client` ([0.2.0])
- Add `:invalid_response_error` for successful HTTP responses with invalid JSON bodies ([0.2.0])
- Add ExSlop to the Credo quality gate for generated-code slop checks ([0.2.0])

### Removed

- **Breaking:** remove the auto-started `PolarExpress.Application` callback from package startup ([0.2.0])

### Fixed

- Fix `Client.request/4` to report non-JSON `2xx` responses as errors instead of ambiguous `%{"raw" => body}` successes ([0.2.0])
- Fix `Client.request/4` specs to include `nil` for `204 No Content` responses ([0.2.0])
- Fix `Client.raw_request/4` to return `PolarExpress.Error` for non-`2xx` API responses ([0.2.0])
- Tighten `Deserializer.cast/2` specs so Dialyzer can detect request return-shape mismatches ([0.2.0])
- Generate `Client.raw_request/4` calls for OpenAPI operations that return non-JSON success bodies ([0.2.0])

## [0.1.6] - 2026-04-16

### Changed

- Split customer schemas into individual and team variants for reads, creates, and state responses ([`7d439c2`])
- Rename generated `OwnerCreate` and `ListResource_` schemas to match the latest OpenAPI names ([`7d439c2`])
- Expand generated `presentment_currency` enum values from the latest OpenAPI spec ([`7d439c2`])

### Added

- Add customer-portal email-change endpoints, members external-id lookups, metrics dashboards, and metrics export support ([`7d439c2`])
- Add generated subscription update, order voided, payment failure, organization legal-entity, meter, seat-tier, tax, and settings schemas ([`7d439c2`])
- Add expanded generated API coverage for benefits, custom fields, discounts, events, meters, organizations, and subscriptions ([`7d439c2`])

### Fixed

- Fix generated schema property merging across `oneOf` and `anyOf` branches ([`dc300f2`])
- Add `rustyjson` to Dialyzer PLT applications so analysis can run cleanly ([`66d43a5`])

## [0.1.5] - 2026-03-03

### Changed

- Sync the generated SDK with Polar's multi-currency OpenAPI update ([`4b19808`])
- Decouple client and deserializer tests from generated schemas using stable fixtures ([`f7d11a7`])

### Added

- Add the `membersessions` JavaScript SDK parity alias while it is absent from the public OpenAPI spec ([`4b19808`])

### Fixed

- Fix CI failures from upstream removal of `CustomerWithMembers` and `ProductPriceSeatBased.recurring_interval` ([`f7d11a7`])

## [0.1.4] - 2026-02-17

### Changed

- Exclude the code generator and `mix polar_express.generate` task from the Hex package ([`42f4650`])
- Make `rustyjson` a dev/test-only dependency after excluding generator code from the package ([`46c322f`])

## [0.1.3] - 2026-02-16

### Fixed

- Use `String.to_existing_atom/1` for API error type parsing to prevent atom table exhaustion from unexpected error types ([`b719873`])

## [0.1.2] - 2026-02-12

### Added

- Add generated `oneOf`, `anyOf`, `prefixItems`, typed-map, polymorphic, and nested-array support ([`0d0e648`])
- Add missing generated `CustomerPortalOAuthAccount` schema support for `oauth_accounts` fields ([`0d0e648`])

### Fixed

- Fix generated enum modules so large value lists are not truncated ([`0d0e648`])
- Fix compiler warnings in generator logic ([`0d0e648`])

## [0.1.1] - 2026-02-11

### Changed

- Wire webhook event deserialization through the generated `EventTypes` registry ([`dd54197`])
- Add typed modules and typed event `data` fields for generated webhook events ([`dd54197`])

### Removed

- Remove unused Stripe-derived registry and generator code from the Polar SDK ([`dd54197`])

### Fixed

- Fix Standard Webhooks verification behavior in webhook handling ([`c4e7f55`])
- Fix package metadata issues that prevented Hex publication ([`430c39a`])
- Fix CI to call `mix polar_express.generate` instead of the old task name ([`0df0843`])
- Fix generator paths that still emitted registry files under `lib/stripe/` ([`dd54197`])

## [0.1.0] - 2026-02-11

_Initial release._

### Added

- Add generated Polar API services, resources, params, schemas, and event modules with JavaScript SDK parity ([`693a87e`])
- Add list pagination, raw requests, streaming requests, retries, telemetry, OAuth, webhooks, and test stubs ([`693a87e`])
- Add Finch-backed HTTP client and RustyJSON-backed JSON decoding ([`693a87e`])

[0.2.5]: https://github.com/jeffhuen/polar_express/compare/0.2.4...0.2.5
[0.2.4]: https://github.com/jeffhuen/polar_express/compare/0.2.3...0.2.4
[0.2.3]: https://github.com/jeffhuen/polar_express/compare/0.2.2...0.2.3
[0.2.1]: https://github.com/jeffhuen/polar_express/compare/0.2.0...0.2.1
[0.2.0]: https://github.com/jeffhuen/polar_express/compare/66d43a5...HEAD
[0.1.6]: https://github.com/jeffhuen/polar_express/commit/7d439c227951918e05277783dc55c7f5ab1b1359
[0.1.5]: https://github.com/jeffhuen/polar_express/commit/4b198081298905870f66c02cd8d7458a99a2083b
[0.1.4]: https://github.com/jeffhuen/polar_express/commit/42f4650a6585964d8e0028bdede8ed214a076508
[0.1.3]: https://github.com/jeffhuen/polar_express/commit/b719873300d4820887070d3339f7709a435f6991
[0.1.2]: https://github.com/jeffhuen/polar_express/commit/0d0e648d23ecda40ad629f2dad17ec24d063eee8
[0.1.1]: https://github.com/jeffhuen/polar_express/commit/dd541976cd373f48056de1790f975e8754eabeab
[0.1.0]: https://github.com/jeffhuen/polar_express/commit/693a87efc6e2cc967c328c594982c3d3c849345d
[`7d439c2`]: https://github.com/jeffhuen/polar_express/commit/7d439c227951918e05277783dc55c7f5ab1b1359
[`dc300f2`]: https://github.com/jeffhuen/polar_express/commit/dc300f26689f3a29b5040c6d3b226c0790ce1a96
[`66d43a5`]: https://github.com/jeffhuen/polar_express/commit/66d43a5e8fe9b3d33b083fe47f0d6a486844d29a
[`4b19808`]: https://github.com/jeffhuen/polar_express/commit/4b198081298905870f66c02cd8d7458a99a2083b
[`f7d11a7`]: https://github.com/jeffhuen/polar_express/commit/f7d11a72cbae1e1cc11fb7ec77db90f134a423d5
[`42f4650`]: https://github.com/jeffhuen/polar_express/commit/42f4650a6585964d8e0028bdede8ed214a076508
[`46c322f`]: https://github.com/jeffhuen/polar_express/commit/46c322f9577c77c64dc020177204677db89f93bf
[`b719873`]: https://github.com/jeffhuen/polar_express/commit/b719873300d4820887070d3339f7709a435f6991
[`0d0e648`]: https://github.com/jeffhuen/polar_express/commit/0d0e648d23ecda40ad629f2dad17ec24d063eee8
[`dd54197`]: https://github.com/jeffhuen/polar_express/commit/dd541976cd373f48056de1790f975e8754eabeab
[`c4e7f55`]: https://github.com/jeffhuen/polar_express/commit/c4e7f55f93b03af26e3eb73a01c098e0a0300604
[`430c39a`]: https://github.com/jeffhuen/polar_express/commit/430c39a8d429f2850750bfaf179588a2716204ac
[`0df0843`]: https://github.com/jeffhuen/polar_express/commit/0df0843f1c8bd284150574686d4e1f34bb7e86d0
[`693a87e`]: https://github.com/jeffhuen/polar_express/commit/693a87efc6e2cc967c328c594982c3d3c849345d
