require 'prime'

def consec_kprimes(k, arr)
  count = 0

  results = arr.map do |val|
    val.prime_division.sum { _1.last }
  end

  results.each_cons(2) { count += 1 if _1.first == k && _1.last == k }

  count
end
