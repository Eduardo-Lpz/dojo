def order(words)
  return '' if words.strip.empty?

  words_array = words.split
  positions = words_array.map { |word| word.scan(/\d/).first }

  mapped_values = Hash[positions.zip(words_array)]
  ordered = mapped_values.sort.to_h
  ordered.values.join(' ')

  # words.split.sort_by{ |w| w[/\d/] }.join(' ')
end
