# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Common Changelog](https://common-changelog.org/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
