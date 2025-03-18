require 'net/http'
require 'json'

class HomeController < ApplicationController
  def index
    @selected_currencies = params[:currencies] || ["USD-BRL", "EUR-BRL", "BTC-BRL", "GBP-BRL"]
    @chart_data = []

    @selected_currencies.each do |currency_code|
      currency = Currency.find_by_code(currency_code)
      next unless currency

      url = URI("https://economia.awesomeapi.com.br/json/daily/#{currency_code}/30")
      response = Net::HTTP.get(url)
      data = JSON.parse(response)

      hash = {}
      latest_rate = nil
      previous_rate = nil
      change_percentage = 0

      data.each_with_index do |entry, index|
        date = Time.at(entry["timestamp"].to_i).strftime("%d/%m/%Y")
        rate = entry["high"].to_f
        hash[date] = rate

        if index == 0
          latest_rate = rate
        elsif index == 1
          previous_rate = rate
          change_percentage = ((latest_rate - previous_rate) / previous_rate * 100).round(2)
        end
      end

      @chart_data << {
        code: currency[:code],
        name: currency[:name],
        data: hash,
        latest_rate: latest_rate,
        change_percentage: change_percentage,
        trend: change_percentage >= 0 ? "up" : "down"
      }
    end
  end
end
