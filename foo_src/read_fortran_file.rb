
n_subs = 0
File.readlines('simple_image.f90', chomp: true).each do |line|   # readlines returns an array object
  if( line.match? /subroutine/ )                                 # we call the each method on that array object
    n_subs += 1                                                 
  end
  puts(line)
end
n_subs /= 2
puts("number of subroutines: #{n_subs}")


