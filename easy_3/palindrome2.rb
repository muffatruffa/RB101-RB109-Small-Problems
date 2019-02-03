def real_palindrome?(string)
    string = string.downcase.delete('^a-z0-9')
      palindrome?(string)
end
