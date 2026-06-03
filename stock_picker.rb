def stock_picker(prices)
    (0...prices.length).to_a.combination(2).max_by{|buy, sell| prices[sell] - prices[buy]}
end

puts stock_picker([17,3,6,9,15,8,6,1,10])