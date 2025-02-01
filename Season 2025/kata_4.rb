# def strongest_even(n, m)
#   strongnesses = (n..m).map do |current|
#     if current.odd?
#       0
#     else
#       count = 0
#       rest = current

#       loop do
#         rest = rest / 2

#         count += 1
#         break if rest.odd?
#       end

#       count
#     end
#   end

#   mapped_values = (n..m).zip(strongnesses).to_h
#   mapped_values.max_by { _2 }.first
# end

# def strongest_even(n, m)
#   (n..m).max_by do |current|
#     if current.odd?
#       0
#     else
#       count = 0

#       loop do
#         current /= 2
#         count += 1
#         break if current.odd?
#       end

#       count
#     end
#   end
# end

# def strongest_even(n, m)
#   mapped_values = {}

#   while n <= m
#     if n.odd?
#       n += 1
#       next
#     end

#     count = 0
#     current = n

#     loop do
#       current /= 2
#       count += 1
#       break if current.odd?
#     end

#     mapped_values[n] = count
#     n += 1
#   end

#   mapped_values.max_by { _2 }.first
# end


# def strongest_even(n, m)
#   max = 0
#   val = 0

#   while n <= m
#     if n.odd?
#       n += 1
#       next
#     end

#     count = 0
#     current = n

#     loop do
#       current /= 2
#       count += 1
#       break if current.odd?
#     end

#     if count > max
#       max = count
#       val = n
#     end

#     n += 1
#   end

#   val
# end

# def strongest_even(n, m)
#   max = 0
#   val = 0

#   while n <= m
#     if n.odd?
#       n += 1
#       next
#     end

#     count = 0
#     current = n

#     count = current.to_s(2).slice(/0*\z/).size

#     if count > max
#       max = count
#       val = n
#     end
#     n += 1
#   end

#   val
# end

def strongest_even(n, m)
  max = 0
  val = 0
  n += 1 if n.odd?

  while n <= m
    count = 0

    pow_of_two = n & -n
    count = Math.log2(pow_of_two).to_i

    if count > max
      max = count
      val = n
    end

    n += pow_of_two
  end

  val
end
