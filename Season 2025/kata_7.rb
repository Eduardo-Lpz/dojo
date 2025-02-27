def isOddHeavy(arr)
  heavy_odd = []
  heavy_even = nil

  arr.each do |num|
    if num.odd?
      heavy_odd.push(num)
    else
      if heavy_even.nil?
        heavy_even = num
      else
        heavy_even = num if num > heavy_even
      end
    end
  end

  return false if heavy_odd.empty? || arr.empty?
  return true if heavy_even.nil?

  heavy_odd.all? { _1 > heavy_even }
end
