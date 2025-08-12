puts "What is the bill amount?"
bill_amount = Float(gets)
puts "The bill amount is #{bill_amount}"
puts "What is the tip rate"
tip_rate = Float(gets)
puts "The tip rate is #{tip_rate}"
if( tip_rate > 1.0 )
  # assume tip_rate given in percentage
  tip_rate = tip_rate / 100.0
end
puts "The tip rate is #{tip_rate}"
tip = bill_amount * tip_rate
# round to nearest cent
tip.round(2)
total = bill_amount + tip
puts "Tip: #{tip}"
puts "Total: #{total}"
