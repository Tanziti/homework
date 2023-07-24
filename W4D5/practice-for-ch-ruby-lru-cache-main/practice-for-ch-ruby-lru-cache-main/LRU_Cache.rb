class LRUCache
  def initialize(size)
    @underlying_array = []
    @size = size
  end

  def count
   @underlying_array.count # returns number of elements currently in cache
  end

  def add(el)
    if @underlying_array.include?(el)
     @underlying_array.delete(el)
     @underlying_array << el
    elsif count >= @size 
     @underlying_array.shift
     @underlying_array << el 
    else
     @underlying_array << el 
    end # adds element to cache according to LRU principle
  end

  def show
    p @underlying_array
    nil # shows the items in the cache, with the LRU item first
  end

  private
  # helper methods go here!

end

johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show