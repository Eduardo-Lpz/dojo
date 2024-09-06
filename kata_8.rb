def kata(a1: [], a2: [])
  lengths = [a1.size, a2.size]

  common_values = a1.intersection(a2)
  return common_values if common_values.empty?

  common_values.permutation(2).find_all do |a, b|
    lengths.include?(a + b) || lengths.include?((a - b.abs))
  end.flatten.uniq
end

# p kata(
# # a1: [1, 2, 3, 4, 5, 6],
# # a2: [1, 2, 4, 6, 7, 8, 9, 10]

# # a1: [1, 2, 3, 5, 10, 15],
# # a2: [1, 2, 3, 4, 5, 6, 10, 12, 15, 16]
# )
