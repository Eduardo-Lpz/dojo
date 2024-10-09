def word_pattern(pattern, string)
  words = string.split

  mapped_values = Hash[words.uniq.zip(pattern.chars.uniq)]
  pattern == mapped_values.values_at(*words).join('')
end
