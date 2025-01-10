# def egged(year, span)
#   return "No chickens yet!" if year < 1

#   decrement = 20
#   base_eggs = 300
#   base_value = base_eggs / (1 - (decrement * 0.01))

#   eggs_per_year = span.times.collect { base_value = (base_value * 0.8).to_int }
#   return eggs_per_year.sum * 3 if year >= span

#   eggs_per_year[0..(year - 1)].sum * 3
# end

# def egged(year, span)
#   return "No chickens yet!" if year < 1

#   base_value = 300 / 0.8
#   eggs_per_year = span.times.collect { base_value = (base_value * 0.8).to_int }
#   return eggs_per_year.sum * 3 if year >= span

#   eggs_per_year[0..(year - 1)].sum * 3
# end

def egged(year, span)
  return "No chickens yet!" if year < 1

  base_value = 300 / 0.8
  total = 0

  1.upto(span) do |i|
    break if i > year

    base_value = (base_value * 0.8).to_int
    total += base_value * 3
  end

  total
end
