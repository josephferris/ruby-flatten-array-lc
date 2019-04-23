#
#  1. Create a function to flatten the below array by one dimension.
#
#     oneDimensionalArray = [1, [2, 3, [4, 5]]]
#
#
#  2. Create a function to flatten the below array n times.
#
#     nTimesArray = [1, [2, 3, [4, [5, 6]]]]
#
#
#  3. Create a function to flatten the below array using recursion.
#
#     arrayWithRecursion = [1, [2, 3, [4, [5, 6]]]]
#

class FlattenArray

  class << self
    def one_dimension(arr)
      one_dimension_arr = []
      arr.each {|item| item.is_a?(Array) ? item.each {|obj| one_dimension_arr << obj} : one_dimension_arr << item}
      one_dimension_arr
    end

    def n_times(n_times_arr, n)
      puts "N (#{n}) is bigger than array size (#{n_times_arr.length})" if n_times_arr.length < n
      n.downto(1).each {|item| n_times_arr = one_dimension(n_times_arr) }
      n_times_arr
    end

    def recursive(arr, recursive_arr)
      arr.each {|item| item.is_a?(Array) ? recursive(item, recursive_arr) : recursive_arr << item }
      recursive_arr
    end
  end

end


arr_1 = [1, [2, 3, [4, 5]]]
print "Flatten Array by One Dimension: #{arr_1} => "
puts FlattenArray.one_dimension(arr_1).inspect

arr_2 = [1, [2, 3, [4, [5, 6]]]]
print "Flatten Array by N Times: #{arr_2} => "
print "Enter N: "
n = gets.chomp.to_i
puts FlattenArray.n_times(arr_2, n).inspect

print "Flatten Array Recursively: #{arr_2} => "
puts FlattenArray.recursive(arr_2, recursive_arr = []).inspect
