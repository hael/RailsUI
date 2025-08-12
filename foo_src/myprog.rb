
puts "Hello, Ruby programmer"
puts "It is now #{Time.now}"
puts "gin joint".length       # the "." is alled the reciever of the method, the method is "length"
puts "Rick".index("c")
puts 42.even?                 # the "?" is part of the method name
num = -12
pos = num.abs
puts "absolute value of #{num} is #{pos}" # ruby is a purely object-oriented language with no basic types

# this must be defined before it is called
def say_hello_goodbye( name )
  return "I don't know why you say goodbye, " + name + ", I say hello" # two-space indentation is the norm
end

puts say_hello_goodbye("Hans")
puts say_hello_goodbye("Kate")

a = [1, "cat", 3.14]
puts a.inspect
puts "The second element is #{a[1]}"
a[2] = nil # not nothing in Ruby
puts a.inspect

instrument_section = {
cello:    "string",      # these hash keys are parameter strings (called symbol literals in ruby)
clarinet: "woodwind",
drum:     "percussion",
oboe:     "woodwind",
trumpet:  "brass", 
violin:   "string"
}

puts instrument_section.inspect

### control structures
today = Time.now
puts today
if( today.saturday? )
  puts "Do chores around the house!"
elsif( today.sunday? )
  puts "Go to church!"
else
  puts "Go to work!"
end

### blocks and iterators
3.times { print "Ruby! " }
1.upto(9) { |x| print x }
a = [1,2,3,4]
puts "\nThis an iterator and a block"
a.each{ |elt| print elt+1 }
puts "\nThis too"
a.each do |elt|
  print elt+1
end
print "\n"
b = a.map { |x| x*x } # like array operations in Fortran
puts b.inspect
c = a.select { |x| x%2 == 0}
puts c.inspect
a_sum = a.inject { |sum,x| sum + x }
puts "#{a.sum} is the same as #{a_sum}"