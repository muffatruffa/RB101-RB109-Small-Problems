

# Sort an array of passed in values using merge sort.

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

def merge_bk(ar_1, ar_2)
  result = []
  until ar_1.empty? || ar_2.empty?
    if ar_1[0] < ar_2[0]
      result << ar_1[0]
      ar_1 = ar_1[1..-1]
    else
      result << ar_2[0]
      ar_2 = ar_2[1..-1]
    end
  end
  result + ar_1 + ar_2
end

def merge_sort_bk(array)
  return array if array.size == 1

  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end


def merge_sort(ar)
  if ar.size < 2
    ar
  else
    mid = ar.size / 2
    left = merge_sort(ar[0...mid])
    right = merge_sort(ar[mid..- 1])
    merge(left, right)
  end
end


p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
