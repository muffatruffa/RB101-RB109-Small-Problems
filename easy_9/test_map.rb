ar = [[1,2], [3,4]]

ar.map { |element| element + [100]} # => [[1, 2, 100], [3, 4, 100]]
ar.map { |a, b| a + b} # => [3, 7]
