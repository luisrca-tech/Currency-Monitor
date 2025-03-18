class Currency
  CURRENCIES_LIST = [
    {
      code: "USD-BRL",
      name: "Dólar Americano"
    },
    {
      code: "EUR-BRL",
      name: "Euro"
    },
    {
      code: "BTC-BRL",
      name: "Bitcoin"
    },
    {
      code: "GBP-BRL",
      name: "Libra Esterlina"
    },
    {
      code: "ARS-BRL",
      name: "Peso Argentino"
    },
    {
      code: "CAD-BRL",
      name: "Dólar Canadense"
    },
    {
      code: "AUD-BRL",
      name: "Dólar Australiano"
    },
    {
      code: "JPY-BRL",
      name: "Iene Japonês"
    },
    {
      code: "CNY-BRL",
      name: "Yuan Chinês"
    },
    {
      code: "CHF-BRL",
      name: "Franco Suíço"
    },
    {
      code: "INR-BRL",
      name: "Rúpia Indiana"
    },
    {
      code: "RUB-BRL",
      name: "Rublo Russo"
    }
  ].freeze

  def self.all
    CURRENCIES_LIST
  end

  def self.find_by_code(code)
    CURRENCIES_LIST.find { |c| c[:code] == code }
  end
end
