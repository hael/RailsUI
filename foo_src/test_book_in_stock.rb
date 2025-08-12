require_relative "book_in_stock"
b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.14)
b3 = BookInStock.new("isbn3", "5.67")
puts b1.inspect
puts b2.inspect
puts b3.inspect
p b1    # illustration of the p method to write out objects
p b2
p b3
puts b1 # overriden to_s method provides human-readable representation
puts b2
puts b3
puts "ISBN               = #{b1.isbn}" # thx to attr_reader :isbn, :price
puts "Price              = #{b1.price}"
b1.price = 1.10 * b1.price # 10% price increase
puts "New Price          = #{b1.price}"
puts "New Price in cents = #{b1.price_in_cents}"
b1.price_in_cents = 1234
puts "New Price          = #{b1.price}"
puts "New Price in cents = #{b1.price_in_cents}"