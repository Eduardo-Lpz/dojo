def a1_thick_and_hearty(a1: [], a2: [])
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

# from itertools import permutations

# def a1_thick_and_hearty(a1, a2):
#     lengths = [len(a1), len(a2)]

#     common_values = set(a1).intersection(a2)

#     if not common_values:
#         return set()

#     result = set()
#     for a, b in permutations(common_values, 2):
#         if (a + b) in lengths or abs(a - b) in lengths:
#             result.update([a, b])

#     return result
