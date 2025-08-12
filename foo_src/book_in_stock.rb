class BookInStock
  #attr_reader   :isbn, :price # creates getters
  #attr_writer   :isbn, :price # cerates setters
  #attr_accessor :isbn, :price # creates getters and setters
  #this is what we want:
  attr_reader   :isbn  # the isbn is the book's immutable flag
  attr_accessor :price # we want to both get and set the price (it may change)

  # overriding standard constructor of Object class
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end

  # string representation of object when puts or print is called
  def to_s # override standard to_s method of Object class
    "ISBN: #{@isbn}, price: #{@price}"
  end

  def price_in_cents
    (price * 100.0).round
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end

end
