module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    my_each do |n|
      yield(n, i)
      i += 1
    end
  end

  def my_select
    new_array = []
    # for n in self
      # new_array << n if yield(n)
    # end
    # The above works, but I suspect that the intention is to build on my_each rather than duplicate the code each time. Therefore:
    my_each do |n|
      new_array << n if yield(n)
    end
    new_array
  end

  def my_all?
    all = true
    my_each do |n|
      all = false unless yield(n)
    end
    all
  end

  def my_any?
  end

  def my_none?
  end

  def my_count
  end

  def my_map
    new_array = []
    my_each do |n|
      new_array << yield(n)
    end
    new_array
  end

  def my_inject
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    for n in self
      yield(n)
    end
  end
end
