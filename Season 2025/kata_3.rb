def number_of_pairs(gloves)
  gloves.tally.sum { _2 / 2 }
end

# def number_of_pairs(gloves)
#   gloves
#     .tally
#     .map { _2.divmod(2).first }
#     .sum
# end

def number_of_pairs(gloves)
  mapped_gloves = {}

  gloves.each do
    if mapped_gloves[_1]
      mapped_gloves[_1] += 1
    else
      mapped_gloves[_1] = 1
    end
  end

  pairs = 0

  mapped_gloves.each do
    pairs += _2 / 2
  end

  pairs
end
