def revrot(str, sz)
  return "" if sz > str.size
  return "" if str.empty? || !sz.positive?

  result = ""

  str.chars.each_slice(sz) do |slice|
    next if slice.size != sz

    if slice.inject(0) { |accumulator, element| accumulator + element.to_i } % 2 == 0
      result << slice.reverse.join
    else
      result << slice.rotate.join
    end
  end

  result
end
