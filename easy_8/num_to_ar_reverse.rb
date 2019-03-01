# takes a positive integer as an argument and returns that number with its digits reversed

def reversed_number(n)
  num, digit = n.divmod(10)
  reversed = digit
  while num > 0
    num, digit = num.divmod(10)
    reversed = reversed * 10 + digit
  end
  reversed
end

def reversed_number(n)
  number = n
  all_digits = Enumerator.new do |yielder|
    while number > 0
      number, digit = number.divmod(10)
      yielder << digit
    end
  end
  all_digits.inject(all_digits.next) { |reversed,d| reversed = reversed * 10 +  d}
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1


p reversed_number(12345)
p reversed_number(12213)
p reversed_number(456)
p reversed_number(12000)
p reversed_number(12003)
p reversed_number(1)
