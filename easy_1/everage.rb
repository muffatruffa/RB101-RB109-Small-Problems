def average(ar)
  el_sum = 0
  el_num = 0
  ar.each do |ar_el|
    el_sum += ar_el
    el_num += 1
  end
  el_num = el_num == 0 ? 1 : el_num 
  el_sum.to_f / el_num
end

def average_rec(ar)
  return 0 if ar.empty? 
  average_non_empty = lambda do |ar, el_sum, el_num|
    if ar.size == 1
     (ar[0] +  el_sum).to_f / (el_num + 1)
    else
      average_non_empty.call(ar.drop(1), el_sum + ar[0], el_num + 1 )
    end
  end
  average_non_empty.call(ar, 0, 0)
end
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])

puts average_rec([1, 5, 87, 45, 8, 8])
puts average_rec([9, 47, 23, 95, 16, 52])
