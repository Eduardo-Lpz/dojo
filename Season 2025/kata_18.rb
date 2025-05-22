def add(a,b)
  a = a.chars.reverse.map.with_index { | value, index | value == "1" ? 1 * 2**index : 0 }.sum
  b = b.chars.reverse.map.with_index { | value, index | value == "1" ? 1 * 2**index : 0 }.sum

  sum = a + b

  res = []

  return "0" if sum.zero?

  while sum > 0
    res << sum % 2
    sum /= 2
  end

  res.reverse.join
end
