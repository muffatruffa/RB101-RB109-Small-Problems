 #returns true if all parentheses in the string are properly balanced, false otherwise.


def balanced_bk?(str)
  num_opened = 0
  num_closed = 0
  difference = 0
  str.each_char do |c|
    if c == '('
     num_opened +=1
    elsif c == ')'
      num_closed += 1
    end
    difference = num_opened - num_closed
    break if difference < 0
  end
  difference.zero?
end

def balanced?(str)
  couples_op = { '(' => [0], '[' => [0], '{' => [0] }
  couples_cl = { ')' => couples_op['('], ']' => couples_op['['], '}' => couples_op['{'] }
  doubles = { '"' => true, "'" => true}

  str.each_char do |c|
    case c
    when /[(\[{]/ then couples_op[c][0] += 1
    when /[)\]}]/ then couples_cl[c][0] -= 1
    when /['"]/ then doubles[c] = !doubles[c]
    end
    break if couples_op.any? { |k, v|    v[0] < 0}
  end
  is_couples_balanced = couples_op.all? { |k, v| v[0] == 0}
  is_doubles_balanced = doubles.all? { |k, v| v }
  is_doubles_balanced && is_couples_balanced
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false



p balanced?('What [is] this?') == true
p balanced?('What is} this?') == false
p balanced?('What "is this?') == false
p balanced?('[[What] [is this]]?') == true
p balanced?('{{What}} {is this}}?') == false
p balanced?('Hey!') == true
p balanced?(']Hey![') == false
p balanced?('What [[[is]]] up[') == false

p balanced?('What "is" this?') == true
p balanced?('"What "is" this?') == false
p balanced?("What 'is this?") == false
