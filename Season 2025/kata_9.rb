require 'prime'

def count_kprimes(k, start, nd)
  result = []
  start += 1 if start.zero?

  start.upto(nd) { result.push(_1) if _1.prime_division.sum(&:last) == k }

  result
end

def puzzle(val)
  one_primes = count_kprimes(1, 1, val)
  three_primes = count_kprimes(3, 1, val)
  seven_primes = count_kprimes(7, 1, val)

  return 0 if one_primes.empty? && three_primes.empty? && seven_primes.empty?
  count = 0

  seven_primes.each do |s_p|
    rest = val - s_p
    valid_one_primes = one_primes.keep_if { _1 < rest }
    valid_three_primes = three_primes.keep_if { _1 < rest }

    count += valid_one_primes.product(valid_three_primes).keep_if { _1.sum == rest }.count
  end

  count
end
