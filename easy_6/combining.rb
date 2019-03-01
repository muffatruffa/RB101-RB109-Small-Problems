# takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
# There should be no duplication of values in the returned Array

def merge(ar_1, ar_2)
  result = {}
  ar_1.each_with_object(result) { |el, result| result[el] = el}
  ar_2.each_with_object(result) { |el, result| result[el] = el}
  result.values
end

def merge_bk(ar_1, ar_2)
  (ar_1.uniq + ar_2.uniq).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([1,2,2,3,5],[1,9]) == [1,2,3,5,9]
p merge([],[1,2,3]) == [1,2,3]
