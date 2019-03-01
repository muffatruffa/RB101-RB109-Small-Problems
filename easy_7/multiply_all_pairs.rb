# returns a new Array that contains the product of every pair of numbers
# that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.

def multiply_all_pairs(ar_1, ar_2)
  result = []
  ar_1.cycle(1) do |num1|
    ar_2.cycle(1) { |num2| result << num1 * num2}
  end
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


p multiply_all_pairs([2, 4], [4, 3, 1, 2])

