# takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix.

def transpose(matrix)
  nested_num = matrix.size
  new_m = Array.new(nested_num) {Array.new}
  matrix.each_with_index do |ar, row|
    ar.each_with_index do |el, col|
      new_m[col][row] = el
    end
  end
  new_m
end

def transpose!(matrix)
  last_col = matrix.size() - 1
  matrix.each_with_index do |ar, row|
    last_col = ar.size() - 1
    (row..last_col).each do |col|
     matrix[row][col], matrix[col][row] = matrix[col][row], matrix[row][col]
    end
  end
end

def transpose_rec(matrix)
  case matrix
  when [[],[],[]] then []
  else
    first_three =  [matrix[0][0],matrix[1][0],matrix[2][0]]
    remaining = [matrix[0][1..-1],matrix[1][1..-1],matrix[2][1..-1]]
     transpose_rec(remaining).unshift(first_three)
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

#transpose!(matrix)

p transpose_rec(matrix)
