# returns a string that contains the last name, a comma, a space, and the first name

def swap_name(first_last)
  first_last.gsub(/(\w+)\s(\w+)/, '\2, \1' )
end


p swap_name('Joe Roberts') == 'Roberts, Joe'
