# File generated from our OpenAPI spec
defmodule PolarExpress.Schemas.ProductPriceFixedCreate do
  @moduledoc """
  ProductPriceFixedCreate

  Schema to create a fixed price.
  """

  @typedoc """
  * `amount_type`
  * `price_amount` - The price in cents.
  Minimum amounts per currency:
  - USD: $0.50
  - AED: AED2.00
  - ARS: ARS0.50
  - AUD: A$0.50
  - BRL: R$0.50
  - CAD: CA$0.50
  - CHF: CHF0.50
  - COP: COP0.50
  - CZK: CZK15.00
  - DKK: DKK2.50
  - EUR: €0.50
  - GBP: £0.30
  - HKD: HK$4.00
  - HUF: HUF175.00
  - IDR: IDR0.50
  - ILS: ₪0.50
  - INR: ₹60.00
  - JPY: ¥50
  - KRW: ₩50
  - MXN: MX$0.10
  - MYR: MYR2.00
  - NOK: NOK3.00
  - NZD: NZ$0.50
  - PHP: ₱0.50
  - PLN: PLN2.00
  - RON: RON2.00
  - RUB: RUB0.50
  - SEK: SEK3.00
  - SGD: SGD0.50
  - THB: THB0.10
  - ZAR: ZAR0.50
  * `price_currency` - The currency in which the customer will be charged.
  """
  @type t :: %__MODULE__{
          amount_type: String.t() | nil,
          price_amount: integer() | nil,
          price_currency: PolarExpress.Schemas.PresentmentCurrency.t() | nil
        }

  defstruct [:amount_type, :price_amount, :price_currency]

  @schema_name "ProductPriceFixedCreate"
  def schema_name, do: @schema_name

  def __inner_types__ do
    %{
      "price_currency" => PolarExpress.Schemas.PresentmentCurrency
    }
  end
end
