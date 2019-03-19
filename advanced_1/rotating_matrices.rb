# A 90-degree rotation of a matrix produces a new matrix in which each side of the matrix is rotated clockwise by 90 degrees.
# For example, the 90-degree rotation of the matrix shown above is:

#1  5  8
#4  7  2
#3  9  6


# 3  4  1
# 9  7  5
# 6  2  8
#
# 3  4  1
# 9  7  5
#
# 9  3
# 7  4
# 5  1
#
# Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.
#
# last row become first column and so on
def rotate90(matrix)
  new_matrix = Array.new(matrix[0].size) {Array.new}
  matrix.reverse_each.with_index do |ar, new_col|
    ar.each_index do |new_row|
      new_matrix[new_row][new_col] = ar[new_row]
    end
  end
  new_matrix
end
# rotate matrix by given degrees
# degrees has to be one of: 0, 90, 180, 270, 360
def rotate_degrees(matrix, degrees)
  return puts"Not a valid degree: #{degrees}" unless degrees % 90 == 0
  n = degrees / 90
  return matrrix if n == 4 || n == 0
  temp = matrix
  result = nil
  n.times do |_|
    result = rotate90(temp)
    temp = result
  end
  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2


new_matrix1 = rotate_degrees(matrix1,90)
new_matrix2 = rotate_degrees(matrix2,90)


p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]




new_matrix1 = rotate_degrees(matrix1,180)
p new_matrix1 == [[6, 9, 3], [2, 7, 4], [8, 5, 1]]
new_matrix1 = rotate_degrees(matrix1,270)
p new_matrix1 == [[8, 2, 6], [5, 7, 9], [1, 4, 3]]

new_matrix2 = rotate_degrees(matrix2,180)
p new_matrix2 == [[8, 0, 1, 5], [2, 4, 7, 3]]


error = rotate_degrees(matrix2,110)
