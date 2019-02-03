# Create a simple tip calculator. The program should
# prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both
# the tip and the total amount of the bill.

print 'What is the bill? '

bill = gets.chomp.to_f

print 'What is the tip percentage? '

percentage = gets.chomp.to_f

tip = bill * percentage/100

total = bill + tip
printf("The tip is $%.2f\nThe total is $%.2f", tip, total)
