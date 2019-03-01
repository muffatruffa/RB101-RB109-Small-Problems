# returns two Arrays (as a pair of nested Arrays) that contain
# the first half and second half of the original Array

def halvsies(ar)
  ar_size = ar.size
  half_index = ar_size % 2 == 0 ? (ar_size / 2) -1: ar_size / 2
  ar.partition.with_index { |el, index| index <= half_index }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
