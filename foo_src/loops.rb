i = 0
while i < 4
  puts "i = #{i}"
  i += 1
end

i = 0
until i >= 4
  puts "i = #{i}"
  i += 1
end

array = ['first', 'second', 'third']
array.each do |x|
  puts x
end

names = ['george', 'mike', 'gary', 'diana']
names.each do |name|
  if name == 'gary'
    puts "Break!"
    break
  end
  puts name
end

names.each do |name|
  if name == 'gary'
    puts "Next!"
    next
  end
  puts name
end