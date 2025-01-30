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

def number_of_pairs(gloves)
  mapped_gloves = {}

  for glove in gloves do
    if mapped_gloves[glove]
      mapped_gloves[glove] += 1
    else
      mapped_gloves[glove] = 1
    end
  end

  pairs = 0

  for _, quantity in mapped_gloves do
    pairs += quantity / 2
  end

  pairs
end
