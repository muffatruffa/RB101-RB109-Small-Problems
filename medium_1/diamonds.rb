# displays a 4-pointed diamond in an n x n grid


def diamond(n)
  (1..n).step(2) do |i|
    spaces = ' ' * ((n - i) / 2)
    stars = '*' * i
    line = format("%s%s%s\n", spaces, stars, spaces)
    print line
  end
  (n - 1).downto(1)  do  |i|
    spaces = ' ' * ((n - i) / 2)
    stars = '*' * i
    line = format("%s%s%s\n", spaces, stars, spaces)
    print line if i.odd?
  end
end

# n supposed to be odd
# return an enumerator to iterate fro 1 to
# n step two and from n - 2 to 1 step 2.
# step_one_to_n_to_one(3).to_a # => [1, 3, 1]
def step_one_to_n_to_one(n)
  e = Enumerator.new do |y|
    (1..n).step(2).each { |i| y << i}
    (n - 2).downto(1).each { |i| y << i if i.odd?}
  end
end

# if evaluated with full:false print the outline of the diamond
def diamond_enum_sol(n, full:true)
  step_one_to_n_to_one(n).each do |i|
    line = full || i == 1 ? '*' * i : '*' +' ' *  (i - 2)  + '*'
    puts line.center(n)
  end
end

def diamond_rec(n)
  max_stars =  n
  print_top = ->(n, stars) {
    if n == 1
      puts stars.center(max_stars)
    else
      puts stars.center(max_stars)
      print_top.(n - 2, stars << '**')
    end
  }
  print_bottom = ->(n, stars) {
    if n == 1
      puts stars.center(max_stars)
    else
      puts stars.center(max_stars)
      print_bottom.(n - 2, stars[2..-1])
    end
  }
  return puts '*' if n == 1
  print_top.(n, '*')
  print_bottom.(n - 2, '*' * (n - 2))
end

diamond(1)
diamond(3)
diamond(9)

#diamond_enum_sol(9)
#diamond_enum_sol(3)
#diamond_enum_sol(1)
#
#
#diamond_enum_sol(9,full:false)
#diamond_enum_sol(3, full:false)
#diamond_enum_sol(1, full:false)


#diamond_rec(3)
#diamond_rec(9)
#diamond_rec(1)
