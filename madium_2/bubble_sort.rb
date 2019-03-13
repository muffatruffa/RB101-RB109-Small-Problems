# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared.
# If the first of the two elements is greater than the second, then the two elements are swapped.
# This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

def bubble_sort!(ar)
  max_index = ar.size() - 1
  swapped = true
  while swapped do
    swapped = false
    idx = 0
    loop do 
      if idx < max_index && ar[idx] > ar[idx + 1]
        ar[idx], ar[idx + 1] = ar[idx + 1], ar[idx]
        swapped = true
      end
      idx += 1
      break if idx > max_index - 1
    end
  end
end


def bubble_sort!(ar)
  max_index = ar.size() - 1
  new_max = max_index
  while max_index >= 1 do
    idx = 0
    max_index = new_max
    new_max = 0
    loop do 
      if idx <= max_index - 1 && ar[idx] > ar[idx + 1]
        ar[idx], ar[idx + 1] = ar[idx + 1], ar[idx]
        new_max = idx
      end
      idx += 1
      break if idx > max_index
    end
  end
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]
p array
array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]
p array
array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

p array
