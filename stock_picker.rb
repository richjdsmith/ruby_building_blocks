def stock_picker(days)

  purchase_date, sell_date, profit, i = 0, 0, 0, 0

  while i < days.length 

    next_day = i + 1
      while next_day < days.length
        if days[next_day] - days[i] > profit
          purchase_date, sell_date = i, next_day
          profit = purchase_date - sell_date
        end
        next_day += 1
      end
      i += 1
  end 

  total_profit = days[sell_date] - days[purchase_date] 

  puts " The purchase day is #{purchase_date} \n The sell day is #{sell_date} \n The total profit is $#{total_profit}"

end


puts stock_picker([17,3,6,9,15,8,6,1,10])

#stock_picker([rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), rand(100)])