require 'prime'

def f(n)
  limit = n.digits.count - 1

  last_prime_even_digits = 0
  prime = 0

  (n - 1).downto(1) do |current|
    next if current.even?
    next if !current.prime?

    current_even_digits = current.digits.count(&:even?)

    if current_even_digits > last_prime_even_digits
      prime = current
      last_prime_even_digits = current_even_digits
    end

    break if current.digits.size < limit
  end

  prime
end
