def bits_battle(numbers)
  odd_count = 0
  even_count = 0

  numbers.each do |num|
    next if num.zero?

    if num.odd?
      odd_count += num.to_s(2).count("1")
    else
      even_count += num.to_s(2).count("0")
    end
  end

  return "tie" if odd_count == even_count

  "#{odd_count > even_count ? "odds" : "evens"} win"
end
