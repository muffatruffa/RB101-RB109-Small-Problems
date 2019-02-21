# returns an Array with the same number of elements, and each element has the running total from the original Array

def running_total_bk(ar)
  totals_at_index = []
  ar.each_index do |index|
    totals_at_index << ar[0..index].inject(:+)
  end
  totals_at_index
end

def running_total_bk2(ar)
  sum = 0
  ar.each_with_object([]) do |num, obj|
    sum += num
    obj << sum
  end
end

def running_total(ar)
  if ar.empty?
    []
  else
    running_total(ar[0..-2]) << ar.sum
  end
end
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
