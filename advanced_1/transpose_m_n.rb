# Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.


def transpose(matrix)
  cols = matrix[0].size
  new_m = Array.new(cols) {Array.new}
  matrix.each_with_index do |ar, matrix_row|
    ar.each_with_index do |el, matrix_col|
      new_m[matrix_col][matrix_row] = el
    end
  end
  new_m
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
     [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
