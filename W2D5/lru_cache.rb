class LRUCache
  def initialize(size)
    @size = size
    @cache = []
  end

  def count
    @cache.count
  end

  def add(el)
    if @cache.include? el
      @cache.delete(el)
      @cache << el
    elsif count >= @size
      @cache.shift
      @cache << el
    else
      @cache << el
    end
  end

  def show
    p @cache
    nil
  end

  private
  # helper methods go here!

end


# As you might have guessed, this is not the typical implementation of
# an LRU Cache. Any thoughts as to why?
#
# Let's consider the time complexity of the LRUCache#add method you
# wrote. In my solution it's O(n), where n is the size of the cache.
# For a large cache, that's a very lengthy process for simply adding
# one element. How might we improve the efficiency? Brainstorm some
# ways we might apply the ADTs from tonight's readings to do this.
