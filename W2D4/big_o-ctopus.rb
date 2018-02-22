fish_array = [
  'fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish',
  'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'] #=> "fiiiissshhhhhh"

# Sluggish Octopus
# Find the longest fish in O(n^2)

# bubble_sort

def bubble_sort(array)
  sorting = true

  while sorting
    sorting = false

    (array.length - 1).times do |idx|
      word1 = array[idx]
      word2 = array[idx + 1]
      if word1.length > word2.length
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        sorting = true
      end
    end
  end

  array.last
end


puts bubble_sort(fish_array)


# Dominant Octopus
# Find the longest fish in O(n log n)

# def merge_sort(array)
#   return array if array.count <= 1
#   mid_pt = array.count / 2
#   left = merge_sort(array[0...mid_pt])
#   right = merge_sort(array[mid_pt..-1])
#
#   my_merge(left, right).last
# end
#
# def my_merge(left, right)
#   result = []
#
#   until left.empty? || right.empty?
#     case left.first <=> right.first
#     when -1, 0
#       result << left.shift
#     else
#       result << right.shift
#     end
#   end
#
#   result + left + right
# end
#
#
# puts merge_sort(fish_array)

# Clever Octopus
# Find the longest fish in O(n)

# iterate thru all items before returning



tiles_array = [
      "up", "right-up", "right", "right-down", "down",
      "left-down", "left",  "left-up" ]


# Dancing Octopus
# Given a tile directions, iterate through tiles array to return
# tentacle number (tile idx) the octopus must move. O(n) time

def slow_dance(direction, array)
  array.each_with_index do |el, idx|
    return idx if el == direction
  end
end

puts slow_dance("up", tiles_array)
puts slow_dance("right-down", tiles_array)

# Constant Dance
# Use a different data structure to write new function to achieve
# O(1) time

# hash

tiles_hash = {
  "up" => 0,
  "right-up" => 1,
  "right"=> 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def constant_dance(direction, hash)
  hash[direction]
end

puts constant_dance("down", tiles_hash)
