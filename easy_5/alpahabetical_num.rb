#  takes an Array of Integers between 0 and 19, and returns an Array of those Integers
#  sorted based on the English words for each number


ENLGISH_NUMS  = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten,
eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)

def alphabetic_number_sort(ar)
  ar.sort { |a, b| ENLGISH_NUMS[a] <=> ENLGISH_NUMS[b]}
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
