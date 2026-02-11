# Polar Express: Adaptations from TigerStripe

## Key Differences: Stripe → Polar

### 1. **OpenAPI Spec Source**
| Aspect | Stripe | Polar |
|--------|--------|-------|
| Spec URL | `https://raw.githubusercontent.com/stripe/openapi/master/openapi/spec3.sdk.json` | `https://api.polar.sh/openapi.json` |
| Spec Size | ~9.5MB | ~2MB (smaller API surface) |
| Release Cadence | Multiple times per week | Less frequent, but follows Polar releases |
| SDK Extensions | `x-stripeResource`, `x-stripeOperations` | Standard OpenAPI 3.0 (no custom extensions) |

### 2. **API Authentication**
| Aspect | Stripe | Polar |
|--------|--------|-------|
| Auth Type | Bearer Token | Bearer Token |
| Header Name | `Authorization: Bearer sk_test_...` | `Authorization: Bearer pk_test_...` |
| Config Key | `:api_key` | `:api_key` (compatible) |
| Env Var | `STRIPE_SECRET_KEY` | `POLAR_ACCESS_TOKEN` |

### 3. **API Structure**
| Aspect | Stripe | Polar |
|--------|--------|-------|
| Services | 190 (V1 + V2) | ~30 (API v1 only currently) |
| Resources | 307 | ~60 |
| Params Modules | 523 | ~80 |
| Event Types | 22+ | ~15 |
| Versioning | V1 + V2 (with paths) | Single API version (v1) |

### 4. **Webhook Verification**
| Aspect | Stripe | Polar |
|--------|--------|-------|
| Format | HMAC-SHA256 custom | `standardwebhooks` format (industry standard) |
| Header | `Stripe-Signature` | `svix-signature` (via standardwebhooks) |
| Verification Lib | Custom | `standard_webhooks` (Hex package) |
| Implementation | `Stripe.Webhook.verify_header/3` | `StandardWebhooks.verify/3` wrapper |

### 5. **HTTP Client Layer** (Minor Changes)
| Aspect | Stripe | Polar |
|--------|--------|-------|
| HTTP Client | Finch | Finch (same) |
| Request Encoding | V1: form-encoded, V2: JSON | JSON-only (Polar API is JSON) |
| Response Format | JSON | JSON (same) |
| Multipart/Files | Custom `Stripe.Multipart` | May need Polar-specific handling |

### 6. **Services to Remove/Modify**
- **Remove**: `OAuthService` — Polar doesn't have OAuth (yet)
- **Keep**: All HTTP client, retry, telemetry, and core infrastructure
- **Adapt**: Error handling for Polar error format
- **Adapt**: Event parsing/dispatch for Polar events

### 7. **Generator Changes**
| File | Change |
|------|--------|
| `scripts/sync_openapi.sh` | Update Spec URL to Polar's OpenAPI endpoint |
| `lib/polar_express/generator/openapi.ex` | Parse standard OpenAPI 3.0 (no x-stripe extensions) |
| `lib/polar_express/generator/naming.ex` | Simplify: Polar has fewer naming edge cases |
| `lib/polar_express/generator/service_generator.ex` | Generate ~30 services instead of 190 |
| `lib/polar_express/generator/overrides.ex` | Minimal overrides (Polar spec is cleaner) |

### 8. **Configuration**
```elixir
# Stripe
config :tiger_stripe,
  api_key: System.fetch_env!("STRIPE_SECRET_KEY"),
  webhook_secret: System.fetch_env!("STRIPE_WEBHOOK_SECRET"),
  api_version: "2026-01-28.clover",
  stripe_account: "acct_..."

# Polar
config :polar_express,
  api_key: System.fetch_env!("POLAR_ACCESS_TOKEN"),
  webhook_secret: System.fetch_env!("POLAR_WEBHOOK_SECRET"),
  organization_id: "org_..."  # Instead of stripe_account
```

### 9. **Parity Testing**
| Aspect | Stripe | Polar |
|--------|--------|-------|
| Ruby Parity | `scripts/diff_ruby.sh` against stripe-ruby | `scripts/diff_js.sh` against @polar-sh/sdk (JavaScript) |
| CI Comparison | Weekly against Ruby SDK | Against JavaScript SDK |

## Implementation Priority

### Phase 1: Foundation (Rename Complete ✅)
- [x] Copy tiger_stripe → polar_express
- [x] Rename all modules (Stripe → PolarExpress)
- [x] Rename all config keys (tiger_stripe → polar_express)

### Phase 2: Spec Integration (IN PROGRESS)
- [ ] Update `scripts/sync_openapi.sh` for Polar's spec URL
- [ ] Fetch Polar's OpenAPI spec
- [ ] Update generator to parse standard OpenAPI 3.0
- [ ] Remove x-stripe extension handling

### Phase 3: Core Client Updates
- [ ] Update HTTP headers for Polar
- [ ] Remove V2 support (Polar is V1 only)
- [ ] Simplify request encoding (JSON-only)
- [ ] Update error handling for Polar error format

### Phase 4: Webhook Verification
- [ ] Add `standard_webhooks` dependency
- [ ] Implement `PolarExpress.Webhook.verify_event/3`
- [ ] Remove custom HMAC-SHA256 logic
- [ ] Test webhook verification

### Phase 5: Code Generation
- [ ] Run generator on Polar's spec
- [ ] Generate ~30 services + resources + params
- [ ] Verify all compiles
- [ ] Create comparison script against JS SDK

### Phase 6: Testing & Release
- [ ] Integration tests against Polar API (sandbox)
- [ ] Documentation updates
- [ ] Hex package release as `polar_express`

## Files to Modify

**Critical Path:**
1. `scripts/sync_openapi.sh` — Fetch Polar spec
2. `lib/polar_express/generator/openapi.ex` — Parse Polar's spec
3. `lib/polar_express/client.ex` — Update headers and auth
4. `lib/polar_express/error.ex` — Polar error format
5. `lib/polar_express/webhook.ex` — standardwebhooks verification
6. `mix.exs` — Add `standard_webhooks` dependency

**Can Keep As-Is:**
- `lib/polar_express/deserializer.ex` — Works with any JSON API
- `lib/polar_express/list_object.ex` — Pagination pattern is similar
- `lib/polar_express/test.ex` — Test stub infrastructure
- `lib/polar_express/multipart.ex` — File upload handling

**To Remove:**
- `lib/polar_express/oauth.ex` — Polar doesn't have OAuth
- OAuth service generation from generator
