class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

class Map
  def intialize
    @map = []
  end

  def assign(key, value)
    pair = @map.index { |pair| pair[0] == key }
    pair ? @map[pair][1] = value : @map.push([key, value])
    [key, value]
  end

  def lookup(key)
    @map.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def remove(key)
    @map.reject! { |pair| pair[0] == key }
    nil
  end

  def show
    deep_dup(@map)
  end

  private

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end

puts "Stack class:"
puts ""
stack = Stack.new
puts stack.show == []
puts stack.add(1)
puts stack.show == [1]
puts stack.remove
puts stack.show == []
puts ""
puts "----------------------"
puts "Queue class:"
puts ""
que = Queue.new
puts que.show == []
puts que.enqueue(55)
puts que.show == [55]
puts que.dequeue
puts que.show == []
puts "----------------------"
puts ""
puts "Map class:"
puts ""
