def high(x)
  mapped_values = ('a'..'z').each.with_index(1).to_h

  x.split.max_by { |a| mapped_values.values_at(*a.chars).sum }
end
