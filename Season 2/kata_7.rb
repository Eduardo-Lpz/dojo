def queue_time(customers, n)
  return 0 if customers.empty?
  return customers.sum if n == 1
  return customers.max if n >= customers.size

  tills = Array.new(n) { |idx| [customers[idx]] }

  customers.drop(n).each { |cstmr| tills.min { |a, b| a.sum <=> b.sum }.push(cstmr) }
  tills.map!(&:sum).max
end

# [2,4,3,2,5,5], 2
# 2 4 <- initial times, till A, till B
# 0 2
# 3 2 <- 3 to till A
# 1 0
# 1 2 <- 2 to till B
# 0 1
# 5 1 <- 5 to till A
# 4 0
# 4 5 <- 5 to till B
# 0 0

# [[2] [4]]
# [[2,3] [4]]
# [[2,3] [4,2]]
# [[2,3,5] [4,2]]
# [[2,3,5] [4,2,5]]
