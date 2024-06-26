# This is simply a working space for me to test and develop code for the assignment.

a = [1, 2, 3]

class Array
  def my_each
    for no in self
      yield(n)
    end
  end
end

a.my_each do |item|
  puts item
end