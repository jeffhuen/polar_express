# Changelog

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

[0.2.2]: https://github.com/jeffhuen/polar_express/compare/0.2.1...HEAD
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
