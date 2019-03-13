#  rotates an array by moving the first element to the end of the array. The original array should not be modified

def rotate_array_bk(ar)
  ar[1..-1] << ar[0]
end

def rotate_array(arr)
    arr.map.with_index { |_, idx| arr[(idx + 1) % arr.size] }
end



def rotate_string(str)
  str.gsub(/\A(.)(.*)/, '\2\1')
end

def rotate_int(num)
  rotate_string(num.to_s).to_i
end

def rotate_int(num)
  current_n = num
  digit_num = 0
  while current_n > 0
    digit_num += 1
    current_n /= 10
  end
  base_power = 10**(digit_num - 1)
  (num % base_power) * 10  + num / base_power
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

puts 'rotate_string'
s = 'abcd'
p rotate_string(s) == 'bcda'
p s == 'abcd'
p rotate_string('a') == 'a'

puts 'rotate_int'

p rotate_int(1256)
p rotate_int(5) == 5

p rotate_int(0) == 0
