require 'prime'

def find_emirp(n)
  result = []

  Prime.each(n) do |prm|
    reversed = prm.to_s.reverse.to_i
    next if !reversed.prime?
    next if prm == reversed

    result.push(prm)
  end

  [result.count, result[-1], result.sum]
end
