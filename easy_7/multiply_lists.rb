#  returns a new Array that contains the product of each pair of numbers
#  from the arguments that have the same index.
#  You may assume that the arguments contain the same number of elements.


def multiply_list_bk(l1,l2)
  l1.zip(l2).map { |pair| pair[0] * pair[1]}
end

def multiply_list_bk2(l1,l2)
  if l1.empty?
    []
  else
   [l1[0] * l2[0]] + multiply_list(l1[1..-1], l2[1..-1])
  end
end

def multiply_list(l1,l2)
  res = []
  0.upto(l1.size()-1) {|n| res << l1[n] * l2[n]}
  res
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
