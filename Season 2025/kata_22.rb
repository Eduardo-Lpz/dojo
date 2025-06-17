def mix(s1, s2)
  s1_occurrences = s1.gsub(/[A-Z]|\W|\d/,"").chars.tally
  s2_occurrences = s2.gsub(/[A-Z]|\W|\d/,"").chars.tally

  valid_keys = (s1_occurrences.keys + s2_occurrences.keys).uniq

  temp_res = []

  valid_keys.each do |k|
    case s1_occurrences[k].to_i <=> s2_occurrences[k].to_i
    when 0
      temp_res.push("=:#{k*s1_occurrences[k]}") if s1_occurrences[k] > 1
    when 1
      temp_res.push("1:#{k*s1_occurrences[k]}") if s1_occurrences[k] > 1
    when -1
      temp_res.push("2:#{k*s2_occurrences[k]}") if s2_occurrences[k] > 1
    end
  end

  temp_res.sort_by {|el| [-el.scan(/[a-z]/).size, el[0], el[-1]] }.join("/")
end
