first  = 'Mary had'
second = " a little lamb"
poem   = first + second
puts poem
puts first.length
puts poem.upcase
puts poem.downcase
poem[0] = 'G'
puts poem

name = 'hans'
first_name = name # copy by reference is the default in Ruby
name[0] = 'H'
puts name
puts first_name
