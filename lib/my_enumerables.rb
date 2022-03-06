module Enumerable
  # Your code goes here
  def my_each_with_index
    my_each_with_index_res = []
    for i in 0...self.length
      new_item = yield(self[i], i) || self[i]
      my_each_with_index_res << new_item
    end
    my_each_with_index_res
  end

  def my_select
    my_select_res = []
    for i in 0...self.length
      if yield(self[i])
        my_select_res << self[i]
      end
    end
    my_select_res
  end

  def my_all?
    for i in 0...self.length
      if !yield(self[i])
        return false
      end
    end
    return true
  end

  def my_any?
    for i in 0...self.length
      if yield(self[i])
        return true
      end
    end
    return false
  end

  def my_none?(&block)
    !self.my_any?(&block)
  end

  def my_count
    if !block_given?
      return self.length
    end

    count = 0
    for i in 0...self.length
      count += yield(self[i]) ? 1 : 0
    end
    count
  end

  def my_map
    my_map_res = []
    for i in 0...self.length
      my_map_res << yield(self[i])
    end
    my_map_res
  end

  def my_inject(initial_value)
    running = initial_value
    for i in 0...self.length
      running = yield(running, self[i])
    end
    running
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    my_each_res = []
    for i in 0...self.length
      new_item = yield(self[i]) || self[i]
      my_each_res << new_item
    end
    my_each_res
  end
end
