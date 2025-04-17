def sort_the_inner_content(words)
  words.split.map do |wrd|
    if wrd.size > 3
      "#{wrd[0]}#{wrd[1..-2].chars.sort.join.reverse}#{wrd[-1]}"
    else
      wrd
    end
  end.join(" ")
end
