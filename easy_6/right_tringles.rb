#  takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars.

#triangle(5)
#
#    *
#   **
#  ***
# ****
#*****

CORNERS = {upleft: -1, upright: 1, downleft: -1, downright: 1}

def triangle(n)
  1.upto(n) do |i|
    print format("%#{n}s\n", "*" * i)
  end
end

def upside_triangle(n)
  n.downto(1) do |i|
    print format("%#{n}s\n", "*" * i)
  end
end

def triangle_down_corner(n, corner: CORNERS[:downright])
  width = n * corner
  1.upto(n) do |i|
    print format("%#{width}s\n", "*" * i)
  end
end

def triangle_up_corner(n, corner: CORNERS[:upleft])
  width = n * corner
  n.downto(1) do |i|
    print format("%#{width}s\n", "*" * i)
  end
end

#triangle(5)
#upside_triangle(5)
triangle_down_corner(5)
triangle_up_corner(5)

