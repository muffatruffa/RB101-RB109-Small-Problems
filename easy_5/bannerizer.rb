
# take a short line of text, and print it within a box.

MAX_SCREEN = 80
MARGIN = 5
DECORaTION_CHARS = 4
MAX_CHAR = MAX_SCREEN - DECORaTION_CHARS - MARGIN

def print_in_box(text)
  print decorated("-" * text.size, left:"+-", right:"-+")
  print decorated(" " * text.size, left:"| ", right:" |")
  print decorated(text)
  print decorated(" " * text.size, left:"| ", right:" |")
  print decorated("-" * text.size, left:"+-", right:"-+")
end

def print_multi(text)
  print decorated_multi("-" * MAX_CHAR, left:"+-", right:"-+")
  print decorated_multi(" " * MAX_CHAR, left:"| ", right:" |")
  text.scan(/.{,#{MAX_CHAR}}/).each {|matched| print decorated_multi(matched) unless matched == ""}
  print decorated_multi(" " * MAX_CHAR, left:"| ", right:" |")
  print decorated_multi("-" * MAX_CHAR, left:"+-", right:"-+")
end

def decorated(text, left:"| " , right:" |")
  format("%#{MARGIN}s%.#{MAX_CHAR}s%s\n", left, text, right )
end

def decorated_multi(text, left:"| " , right:" |")
  format("%#{MARGIN}s%-#{MAX_CHAR}s%s\n", left, text, right )
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box('a' * 100)

very_long = "a" * 1000 + "c" * 500
print_multi(very_long)
