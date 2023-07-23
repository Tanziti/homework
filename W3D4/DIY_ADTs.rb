class Stack
  def initialize
    # create ivar to store stack here!
    new_array = []
  end

  def push(el)
    new_array.push(el)
    el
  end

  def pop
   new_array.pop # removes one element from the stack
  end

  def peek
   new_array.last # returns, but doesn't remove, the top element in the stack
  end
end

class Queue

  def initialize
    new_array = []

  end

  def enqueue(el)
    @new_array.push(el)
    el
  end

  def dequeue
    @new_array.shift
  end

  def peek
    @new_array.first
  end

  private
  attr_reader :new_array
end

# p queue = Queue.new 
# p queue.enqueue(3)
# p queue.enqueue(4)
# p queue.dequeue
# p queue.enqueue(7)
# p queue.peek#  array = [1,2,3,4,5,6,7]
#  array.dequeue
#  array.queue(8)
#  array.dequeue
#  array.peek


class Map
  def initialize 
    @underlying_array = []

  end

  def set(key, value)
    pair_index = underlying_array.index {|pair| pair[0] == key}
    if pair_index
      underlying_array[pair_index][1] = value
    else
      underlying_array.push([key,value])
    end
    value 
  end

  def get(key)
    underlying_array.each {|pair| return pair[1] if pair[0] == key}
    nil
  end

  def delete(key)
    value = get(key)
    underlying_array.reject! {|pair| pair[0] == key}
    value
  end
  def show
    deep_dup(underlying_array)
  end
  private
  def deep_dup(array)
    arr.map {|ele| ele.is_a?(Array) ? deep_cup(ele) : ele}
  end
end