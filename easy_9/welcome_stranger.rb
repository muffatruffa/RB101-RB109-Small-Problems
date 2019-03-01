#  return a greeting that uses the person's full name, and mentions the person's title.

def greetings(ar_name, hash_title)
  hash_title.merge!({full_name: ar_name.join(' ')})
  print format(%(Hello, %<full_name>s! Nice to have a %<title>s %<occupation>s around.\n), hash_title)
end


greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
