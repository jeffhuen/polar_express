defmodule PolarExpress.DeserializerTest do
  use ExUnit.Case, async: true

  alias PolarExpress.Deserializer

  describe "cast/1 paginated list" do
    test "casts Polar paginated response to ListObject" do
      data = %{
        "items" => [
          %{"id" => "cust_1", "name" => "Alice"},
          %{"id" => "cust_2", "name" => "Bob"}
        ],
        "pagination" => %{
          "total_count" => 42,
          "max_page" => 5
        }
      }

      result = Deserializer.cast(data)
      assert %PolarExpress.ListObject{} = result
      assert length(result.items) == 2
      assert result.pagination.total_count == 42
      assert result.pagination.max_page == 5
      assert %{"id" => "cust_1", "name" => "Alice"} = hd(result.items)
    end

    test "casts empty items list" do
      data = %{
        "items" => [],
        "pagination" => %{
          "total_count" => 0,
          "max_page" => 0
        }
      }

      result = Deserializer.cast(data)
      assert %PolarExpress.ListObject{} = result
      assert result.items == []
      assert result.pagination.total_count == 0
      assert result.pagination.max_page == 0
    end

    test "recursively casts items that are paginated lists" do
      data = %{
        "items" => [
          %{
            "items" => [%{"id" => "nested_1"}],
            "pagination" => %{"total_count" => 1, "max_page" => 1}
          }
        ],
        "pagination" => %{"total_count" => 1, "max_page" => 1}
      }

      result = Deserializer.cast(data)
      assert %PolarExpress.ListObject{} = result
      assert length(result.items) == 1
      nested = hd(result.items)
      assert %PolarExpress.ListObject{} = nested
      assert %{"id" => "nested_1"} = hd(nested.items)
    end
  end

  describe "cast/1 plain maps" do
    test "returns raw map as-is" do
      data = %{"id" => "cust_123", "name" => "Alice", "email" => "alice@example.com"}
      assert Deserializer.cast(data) == data
    end

    test "returns map without items/pagination as-is" do
      data = %{"id" => "something", "ok" => true}
      assert Deserializer.cast(data) == data
    end
  end

  describe "cast/2 typed struct instantiation" do
    test "casts map to typed struct with resource option" do
      data = %{
        "id" => "cust_123",
        "email" => "alice@example.com",
        "name" => "Alice",
        "organization_id" => "org_456",
        "email_verified" => true,
        "created_at" => "2024-01-15T10:00:00Z"
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.CustomerWithMembers)

      assert %PolarExpress.Schemas.CustomerWithMembers{} = result
      assert result.id == "cust_123"
      assert result.email == "alice@example.com"
      assert result.name == "Alice"
      assert result.organization_id == "org_456"
      assert result.email_verified == true
      assert result.created_at == ~U[2024-01-15 10:00:00Z]
    end

    test "nested object is cast to inner type struct" do
      data = %{
        "id" => "cust_123",
        "email" => "alice@example.com",
        "billing_address" => %{
          "country" => "US",
          "city" => "San Francisco",
          "state" => "CA",
          "postal_code" => "94105",
          "line1" => "123 Main St"
        }
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.CustomerWithMembers)

      assert %PolarExpress.Schemas.CustomerWithMembers{} = result
      assert %PolarExpress.Schemas.Address{} = result.billing_address
      assert result.billing_address.country == "US"
      assert result.billing_address.city == "San Francisco"
      assert result.billing_address.state == "CA"
      assert result.billing_address.postal_code == "94105"
      assert result.billing_address.line1 == "123 Main St"
    end

    test "nested array is cast to list of inner type structs" do
      data = %{
        "id" => "cust_123",
        "members" => [
          %{"id" => "mem_1", "email" => "alice@example.com", "name" => "Alice"},
          %{"id" => "mem_2", "email" => "bob@example.com", "name" => "Bob"}
        ]
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.CustomerWithMembers)

      assert %PolarExpress.Schemas.CustomerWithMembers{} = result
      assert [%PolarExpress.Schemas.Member{} = m1, %PolarExpress.Schemas.Member{} = m2] =
               result.members

      assert m1.id == "mem_1"
      assert m1.email == "alice@example.com"
      assert m2.id == "mem_2"
      assert m2.name == "Bob"
    end

    test "deeply nested structs are recursively cast" do
      data = %{
        "id" => "sub_123",
        "status" => "active",
        "customer" => %{
          "id" => "cust_456",
          "email" => "alice@example.com",
          "billing_address" => %{
            "country" => "US",
            "city" => "Portland"
          }
        },
        "product" => %{
          "id" => "prod_789",
          "name" => "Pro Plan",
          "is_recurring" => true
        }
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Subscription)

      assert %PolarExpress.Schemas.Subscription{} = result
      assert result.id == "sub_123"
      assert result.status == "active"

      assert %PolarExpress.Schemas.SubscriptionCustomer{} = result.customer
      assert result.customer.id == "cust_456"
      assert result.customer.email == "alice@example.com"

      assert %PolarExpress.Schemas.Address{} = result.customer.billing_address
      assert result.customer.billing_address.country == "US"
      assert result.customer.billing_address.city == "Portland"

      assert %PolarExpress.Schemas.Product{} = result.product
      assert result.product.id == "prod_789"
      assert result.product.name == "Pro Plan"
    end

    test "nil nested fields stay nil" do
      data = %{
        "id" => "cust_123",
        "email" => "alice@example.com",
        "billing_address" => nil,
        "members" => nil
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.CustomerWithMembers)

      assert %PolarExpress.Schemas.CustomerWithMembers{} = result
      assert result.billing_address == nil
      assert result.members == nil
    end

    test "extra JSON fields not in struct are silently dropped" do
      data = %{
        "id" => "cust_123",
        "email" => "alice@example.com",
        "unknown_field" => "should be ignored",
        "another_extra" => 42
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.CustomerWithMembers)

      assert %PolarExpress.Schemas.CustomerWithMembers{} = result
      assert result.id == "cust_123"
      assert result.email == "alice@example.com"
      # Extra fields are not present on the struct
      refute Map.has_key?(Map.from_struct(result), :unknown_field)
    end

    test "nil resource option returns raw map (backward compat)" do
      data = %{"id" => "cust_123", "email" => "alice@example.com"}

      assert Deserializer.cast(data, resource: nil) == data
      assert Deserializer.cast(data, []) == data
      assert Deserializer.cast(data) == data
    end
  end

  describe "cast/2 paginated list with typed items" do
    test "paginated list items are cast to typed structs" do
      data = %{
        "items" => [
          %{"id" => "cust_1", "email" => "alice@example.com", "name" => "Alice"},
          %{"id" => "cust_2", "email" => "bob@example.com", "name" => "Bob"}
        ],
        "pagination" => %{"total_count" => 2, "max_page" => 1}
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.CustomerWithMembers)

      assert %PolarExpress.ListObject{} = result
      assert length(result.items) == 2

      assert [%PolarExpress.Schemas.CustomerWithMembers{} = c1,
              %PolarExpress.Schemas.CustomerWithMembers{} = c2] = result.items

      assert c1.id == "cust_1"
      assert c1.email == "alice@example.com"
      assert c2.id == "cust_2"
      assert c2.name == "Bob"
    end

    test "paginated list items with nested objects are recursively cast" do
      data = %{
        "items" => [
          %{
            "id" => "sub_1",
            "status" => "active",
            "customer" => %{"id" => "cust_1", "email" => "alice@example.com"},
            "product" => %{"id" => "prod_1", "name" => "Basic"}
          }
        ],
        "pagination" => %{"total_count" => 1, "max_page" => 1}
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Subscription)

      assert %PolarExpress.ListObject{} = result
      [sub] = result.items
      assert %PolarExpress.Schemas.Subscription{} = sub
      assert sub.status == "active"
      assert %PolarExpress.Schemas.SubscriptionCustomer{} = sub.customer
      assert sub.customer.email == "alice@example.com"
      assert %PolarExpress.Schemas.Product{} = sub.product
      assert sub.product.name == "Basic"
    end
  end

  describe "cast/2 discriminated union resolution" do
    test "resolves ProductPrice via amount_type discriminator (seat_based — unique to ProductPrice)" do
      data = %{
        "id" => "sub_123",
        "product" => %{
          "id" => "prod_1",
          "name" => "Team Plan",
          "prices" => [
            %{
              "id" => "price_1",
              "amount_type" => "seat_based",
              "price_amount" => 999,
              "price_currency" => "usd",
              "type" => "recurring",
              "recurring_interval" => "month",
              "created_at" => "2024-03-01T00:00:00Z"
            }
          ]
        }
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Subscription)

      assert %PolarExpress.Schemas.Subscription{} = result
      assert %PolarExpress.Schemas.Product{} = result.product
      [price] = result.product.prices
      assert %PolarExpress.Schemas.ProductPriceSeatBased{} = price
      assert price.amount_type == "seat_based"
      assert price.price_currency == "usd"
      assert price.recurring_interval == "month"
    end

    test "resolves discriminated union with fixed amount_type" do
      # Both LegacyRecurring and ProductPrice share "fixed" — first discriminator match wins
      data = %{
        "id" => "sub_123",
        "product" => %{
          "id" => "prod_1",
          "name" => "Pro Plan",
          "prices" => [
            %{
              "id" => "price_1",
              "amount_type" => "fixed",
              "price_amount" => 1999,
              "price_currency" => "usd",
              "type" => "recurring",
              "recurring_interval" => "month",
              "created_at" => "2024-03-01T00:00:00Z"
            }
          ]
        }
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Subscription)
      [price] = result.product.prices
      # Should be a struct (either Legacy or ProductPrice variant) with correct fields
      assert is_struct(price)
      assert price.amount_type == "fixed"
      assert price.price_amount == 1999
      assert price.price_currency == "usd"
    end

    test "resolves top-level discriminated union directly" do
      data = %{
        "id" => "price_mu",
        "amount_type" => "metered_unit",
        "price_currency" => "usd",
        "type" => "recurring",
        "created_at" => "2024-03-01T00:00:00Z"
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.ProductPrice)
      assert %PolarExpress.Schemas.ProductPriceMeteredUnit{} = result
      assert result.amount_type == "metered_unit"
    end
  end

  describe "cast/2 non-discriminated union resolution (variant matching)" do
    test "resolves checkout discount to fixed once/forever variant" do
      data = %{
        "id" => "checkout_1",
        "discount" => %{
          "id" => "disc_1",
          "name" => "10% off",
          "type" => "fixed",
          "duration" => "once",
          "amount" => 500,
          "currency" => "usd"
        }
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Checkout)

      assert %PolarExpress.Schemas.Checkout{} = result
      assert is_struct(result.discount)
      assert result.discount.id == "disc_1"
      assert result.discount.name == "10% off"
      assert result.discount.amount == 500
    end

    test "resolves checkout discount to percentage repeat variant" do
      data = %{
        "id" => "checkout_2",
        "discount" => %{
          "id" => "disc_2",
          "name" => "Holiday deal",
          "type" => "percentage",
          "duration" => "repeating",
          "basis_points" => 2500,
          "duration_in_months" => 3
        }
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Checkout)

      assert %PolarExpress.Schemas.Checkout{} = result
      assert is_struct(result.discount)
      assert result.discount.id == "disc_2"
    end

    test "nil union field stays nil" do
      data = %{
        "id" => "checkout_3",
        "discount" => nil,
        "product_price" => nil
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Checkout)
      assert result.discount == nil
      assert result.product_price == nil
    end
  end

  describe "cast/2 date-time field parsing" do
    test "parses ISO 8601 date strings to DateTime" do
      data = %{
        "id" => "sub_123",
        "created_at" => "2024-06-15T14:30:00Z",
        "current_period_start" => "2024-06-15T00:00:00Z",
        "current_period_end" => "2024-07-15T00:00:00Z"
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Subscription)

      assert %DateTime{} = result.created_at
      assert result.created_at == ~U[2024-06-15 14:30:00Z]
      assert %DateTime{} = result.current_period_start
      assert result.current_period_start == ~U[2024-06-15 00:00:00Z]
      assert %DateTime{} = result.current_period_end
      assert result.current_period_end == ~U[2024-07-15 00:00:00Z]
    end

    test "nil date fields stay nil" do
      data = %{
        "id" => "sub_123",
        "created_at" => nil,
        "canceled_at" => nil,
        "ended_at" => nil
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Subscription)
      assert result.created_at == nil
      assert result.canceled_at == nil
      assert result.ended_at == nil
    end

    test "invalid date strings are left as-is" do
      data = %{
        "id" => "sub_123",
        "created_at" => "not-a-date"
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.Subscription)
      assert result.created_at == "not-a-date"
    end
  end

  describe "cast/2 metadata map types preserved" do
    test "metadata field stays as raw map (not cast to empty struct)" do
      data = %{
        "id" => "cust_123",
        "email" => "alice@example.com",
        "metadata" => %{
          "plan" => "enterprise",
          "team_size" => 50,
          "trial" => true
        }
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.CustomerWithMembers)

      assert %PolarExpress.Schemas.CustomerWithMembers{} = result
      assert is_map(result.metadata)
      refute is_struct(result.metadata)
      assert result.metadata == %{"plan" => "enterprise", "team_size" => 50, "trial" => true}
    end

    test "empty metadata stays as empty map" do
      data = %{
        "id" => "cust_123",
        "email" => "alice@example.com",
        "metadata" => %{}
      }

      result = Deserializer.cast(data, resource: PolarExpress.Schemas.CustomerWithMembers)
      assert result.metadata == %{}
    end
  end

  describe "cast/1 passthrough" do
    test "nil passes through" do
      assert Deserializer.cast(nil) == nil
    end

    test "string passes through" do
      assert Deserializer.cast("hello") == "hello"
    end

    test "integer passes through" do
      assert Deserializer.cast(42) == 42
    end

    test "top-level list casts each element individually" do
      data = [
        %{"id" => "cust_1", "name" => "Alice"},
        %{"id" => "cust_2", "name" => "Bob"},
        "a_string"
      ]

      result = Deserializer.cast(data)
      assert length(result) == 3
      assert %{"id" => "cust_1"} = Enum.at(result, 0)
      assert %{"id" => "cust_2"} = Enum.at(result, 1)
      assert "a_string" == Enum.at(result, 2)
    end

    test "top-level list with paginated items" do
      data = [
        %{
          "items" => [%{"id" => "item_1"}],
          "pagination" => %{"total_count" => 1, "max_page" => 1}
        }
      ]

      result = Deserializer.cast(data)
      assert length(result) == 1
      assert %PolarExpress.ListObject{} = hd(result)
    end
  end
end
