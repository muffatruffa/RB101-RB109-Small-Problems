# takes an Array as an argument, and reverses its elements in place

def reverse!(ls)
  last_ind = ls.size - 1
  first_ind = 0
  loop do
    break if first_ind >= last_ind
    ls[first_ind], ls[last_ind] = ls[last_ind], ls[first_ind]
    last_ind -= 1
    first_ind += 1
  end
  ls
end


list = [1,2,3,4]
p list
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p list
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p list
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p list
p reverse!(list)
p list
