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