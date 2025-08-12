# lambda procs
hello = lambda do
  puts 'Hello!'
  puts 'I am inside a proc'
end

hello.call

multiply = lambda{|x,y| x * y}
n = multiply.call(20,3)
puts n

# codeblock
def run_it
  puts "Before the yield"
  yield
  puts "After the yield"
end

run_it do
  puts "Hello"
  puts "Coming to you from inside the block"
end

puts

def run_it_with_parameter
  puts "Before the yield"
  yield(24)
  puts "After the yield"
end

run_it_with_parameter do |x|
  puts "Hello from inside the proc"
  puts "The value of x is #{x}"
end

puts

# passing lambda proc to codeblock

def run_it_with_parameter(&block)
  puts "Before the call"
  block.call(24)
  puts "After the call"
end

my_proc = lambda{|x| puts "The value of x is #{x}"}
run_it_with_parameter(&my_proc)
