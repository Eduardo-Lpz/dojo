def number_of_pairs(gloves)
  gloves.tally.sum { _2 / 2 }
end

# def number_of_pairs(gloves)
#   gloves
#     .tally
#     .map { _2.divmod(2).first }
#     .sum
# end
