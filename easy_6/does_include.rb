# should return true if the search value is in the array, false if it is not

def include?(ar, val)
  ar.any? {|el| el == val}
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
