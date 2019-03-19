# Write a method that displays an 8-pointed star in an nxn grid,
# where n is an odd integer that is supplied as an argument to the method.
# The smallest such star you need to handle is a 7x7 grid.


def star(n)
  stars_per_line = 3

  spaces_beteewn = (n - stars_per_line) / 2
  max_spaces_after_star = 0
  while spaces_beteewn >= 0 do
    puts " #{' ' * max_spaces_after_star}*#{' ' * spaces_beteewn}*#{' ' * spaces_beteewn}*#{' ' * max_spaces_after_star} "
    max_spaces_after_star += 1
    spaces_beteewn -= 1
  end

  puts  ' ' +  '*' * n

  spaces_beteewn = 0
  max_spaces_after_star = (n - stars_per_line) / 2
  while max_spaces_after_star >= 0 do
    puts " #{' ' * max_spaces_after_star}*#{' ' * spaces_beteewn}*#{' ' * spaces_beteewn}*#{' ' * max_spaces_after_star} "
    max_spaces_after_star -= 1
    spaces_beteewn += 1
  end
end

star(7)
star(9)

