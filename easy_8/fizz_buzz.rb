# Print out all numbers between the two numbers, except if a number is divisible by 3,
# print "Fizz", if a number is divisible by 5, print "Buzz",
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(n1,n2)
 n1.upto(n2) do |n|
   case
   when n % 15 == 0
     print "FizzBuz"
   when n % 3 == 0
     print "Fizz"
   when n % 5 == 0
     print " Buzz"
   else
     print n 
   end
 n == n2 ? (print ".") : (print ", ")
 end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
