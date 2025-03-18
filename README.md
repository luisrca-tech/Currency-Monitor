# Currency Monitor

A real-time currency exchange rate monitoring application built with Ruby on Rails. This application allows users to track and visualize exchange rates of various currencies against the Brazilian Real (BRL).

## Features

- Real-time currency exchange rate tracking
- Interactive line charts showing 30-day historical data
- Support for multiple currency pairs including:
  - USD-BRL (Dólar Americano)
  - EUR-BRL (Euro)
  - BTC-BRL (Bitcoin)
  - GBP-BRL (Libra Esterlina)
  - ARS-BRL (Peso Argentino)
  - CAD-BRL (Dólar Canadense)
  - AUD-BRL (Dólar Australiano)
  - JPY-BRL (Iene Japonês)
  - CNY-BRL (Yuan Chinês)
  - CHF-BRL (Franco Suíço)
  - INR-BRL (Rúpia Indiana)
  - RUB-BRL (Rublo Russo)
- Percentage change indicators
- Interactive currency selection
- Responsive design with Tailwind CSS

## Prerequisites

- Ruby 3.2.2
- Rails 7.1.3
- Node.js and Yarn (for asset compilation)
- PostgreSQL

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/currency-monitor.git
cd currency-monitor
```

2. Install dependencies:
```bash
bundle install
yarn install
```

3. Set up the database:
```bash
bin/rails db:create db:migrate
```

4. Start the server:
```bash
bin/dev
```

## Usage

1. Visit `http://localhost:3000` in your browser
2. Select the currencies you want to monitor from the available options
3. View the real-time exchange rates and historical trends in the charts
4. The percentage change indicators show the rate of change compared to the previous day

## API Integration

The application uses the [AwesomeAPI](https://economia.awesomeapi.com.br/) to fetch real-time currency exchange rates.

## Development

To run the test suite:
```bash
bin/rails db:test:prepare test test:system
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
