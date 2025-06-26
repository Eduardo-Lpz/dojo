def zeros(n)
  return 0 if n.zero?

  res = 0
  Math::log(n, 5).to_i.times do |t|
    res += (n / (5**(t+1)))
  end

  res
end
