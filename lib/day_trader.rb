def day_trader(prices)
    max_profit = 0
    best_days = [0, 0]
  
    prices.each_with_index do |buy_price, buy_day|
      prices[buy_day + 1..-1].each_with_index do |sell_price, index|
        profit = sell_price - buy_price
        if profit > max_profit
          max_profit = profit
          best_days = [buy_day, buy_day + 1 + index]
        end
      end
    end
    best_days
  end
  