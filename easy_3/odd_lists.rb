def oddities(ar)
  result = []
  (0..ar.size - 1).step(2) { |n| result << ar[n] }
  result
end

def odd_rec(ar)
  if ar.empty?
    ar
  else
    # take the first skip the second
    first, second, *tail = ar
    odd_rec(tail).unshift(first)
  end
end

def evens_rec(ar)
  if ar.empty? || ar[1].nil?
    []
  else
    # skip first take second
    first, second, *tail = ar
    evens_rec(tail).unshift(second)
  end
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []


p odd_rec([2, 3, 4, 5, 6]) == [2, 4, 6]
p odd_rec([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p odd_rec(['abc', 'def']) == ['abc']
p odd_rec([123]) == [123]
p odd_rec([]) == []



p evens_rec([2, 3, 4, 5, 6]) == [3, 5]
p evens_rec([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evens_rec(['abc', 'def']) == ['def']
p evens_rec([123]) == []
p evens_rec([]) == []
