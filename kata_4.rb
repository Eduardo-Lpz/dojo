def word_pattern(pattern, string)
  uniq_chars = pattern.chars.uniq
  uniq_words = string.split.uniq

  combined_hash = Hash[uniq_words.zip(uniq_chars)]

  expected_pattern = ''
  string.split.each { |word| expected_pattern << combined_hash[word].to_s }

  pattern == expected_pattern
end
