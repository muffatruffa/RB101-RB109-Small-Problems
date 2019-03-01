# returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

def interleave_bk(ar_1,ar_2)
  ar_1.zip(ar_2).flatten
end

def interleave_2(ar_1, ar_2)
  result = []
  ar_1.each_index do |i|
   result << ar_1[i]
   result << ar_2[i]
  end
  result
end

def interleave_3(ar_1, ar_2)
  if ar_1.empty? && ar_2.empty?
    []
  else
    [ar_1[0], ar_2[0] ] + interleave(ar_1[1..-1], ar_2[1..-1])
  end
end

def interleave(ar_1, ar_2)
  ar_1.each_with_index.inject([]) do |memo,(el,ind)|
   memo << el << ar_2[ind]
  end
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
