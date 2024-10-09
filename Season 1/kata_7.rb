def is_alt(s)
  s_chars = s.chars
  vowels = %w[a e i o u]

  if vowels.include?(s_chars.shift)
    s_chars.each_with_index do |s_ch, idx|
      if idx.even?
        return false if vowels.include?(s_ch)
      else
        return false unless vowels.include?(s_ch)
      end
    end
  else
    s_chars.each_with_index do |s_ch, idx|
      if idx.even?
        return false unless vowels.include?(s_ch)
      else
        return false if vowels.include?(s_ch)
      end
    end
  end

  true
end
