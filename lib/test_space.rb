# This is simply a working space for me to test and develop code for the assignment.

a = [1, 2, 3]

puts a

# class Array
  # def my_each
    # for n in self
      # yield(n)
    # end
  # end
# end
# 
# a.my_each do |item|
  # puts item
# end

b = a.select do |num|
  num > 2
end
puts b