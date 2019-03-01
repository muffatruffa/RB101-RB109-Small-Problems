# returns a new Array with the elements of the original list in reverse order.

def reverse_iterator(ls)
  last_index = ls.size() -1
  new_ar = []
  loop do
    break if last_index < 0
    new_ar << ls[last_index]
    last_index -= 1
  end
  new_ar
end

def reverse_rec(ls)
  if ls.empty?
    []
  else
    reverse_rec(ls[1..-1]) << ls[0]
  end
end

def reverse(ls)
  reverse_enum = ls.reverse_each
  ls_enum.reduce([], :<<)
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true



p reverse([1,2,3,4]) 
p reverse(%w(a b e d c))
p reverse(['abc']) 
p reverse([])

