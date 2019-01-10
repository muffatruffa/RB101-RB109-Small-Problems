# counts the number of occurrences of each element in a given array
def count_occurrences(collection)
  result = Hash.new(0) 
  collection.each do |el|
    result[el] += 1
  end
  result.each {|k,v| puts "#{k} => #{v}"}
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck', 'zack']
count_occurrences(vehicles)
# order the array
# define two index to traverse the array ind1 starts zero ind2 to starts 1. Outside loop 
# Define a counter starts 0 inside loop 
# if cond =   val at ind1 == val at ind2 increment counter while condition 
# else increment counter increment indexes
#
def count_occurrences_ord(arr)
  arr = arr.compact.sort
  ind1 = 0
  ind2 = 1
  while ind2 < arr.size
    current = arr[ind1]
    counter = 1
    while (ind2 < arr.size && arr[ind1] == arr[ind2])
      counter += 1
      ind2 += 1
    end
    ind1 = ind2
    ind2 += 1
    puts "#{current} => #{counter}"
    # take care of last item of array
     if ind2 == arr.size 
       puts "#{arr[ind1]} => 1"
     end
  end
end
p vehicles.sort
count_occurrences_ord(vehicles)
test = %w(a b c d)
count_occurrences_ord(test)

def count_occurrences(arr)
  arr = arr.compact.sort
  ind1 = 0
  ind2 = 1
  while ind2 < arr.size
    current = arr[ind1]
    counter = 1
    while (ind2 < arr.size && arr[ind1] == arr[ind2])
      counter += 1
      ind2 += 1
    end
    ind1 = ind2
    ind2 += 1
    puts "#{current} => #{counter}"
    # take care of last item of array
     if ind2 == arr.size 
       puts "#{arr[ind1]} => 1"
     end
  end
end