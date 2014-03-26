require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
    puts "------------------------"
    puts "Original array: #{array}"
    puts "Element being searched for: #{element}"
    puts "------------------------"
    # If the array is empty return a result
    return false if array.empty?
    # Otherwise call your helper _bsearch method
    _bsearch(array, element, 0, array.length-1)
  end

  def self._bsearch(array, element, start_index, end_index)
    # If the start and end indeces are the same, search
    # that element and return

    return array[start_index] == element if start_index == end_index

    # Otherwise, find the midpoint
    #   midpoint = start_index + (end_index - start_index) / 2
    midpoint = start_index + (end_index - start_index) / 2

    puts "array[start_index..end_index]: #{array[start_index..end_index]}"
    puts "midpoint elem: #{array[midpoint]}  |  midpoint index: #{midpoint}"

    # If the element is greater than the one at midpoint, call
    #   _bsearch on the right half of the remaining array
    # Otherwise, call _bsearch on left half of the remaining array


    if element > array[midpoint]
      _bsearch(array, element, midpoint+1, end_index)
    else
      _bsearch(array, element, start_index, midpoint)
    end
  end
end
