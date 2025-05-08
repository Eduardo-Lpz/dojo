def sort_by_binary_ones(arr)
  arr.sort_by { |el| [-el.to_s(2).count("1"), el.to_s(2).size, el] }
  #your code here
#   (a & b).to_s(2).count("1") > 1
#   [0, 1024, 33]
#   [5, 2049, 3]
#   arr.sort do |a, b|
#     if a.to_s(2).count("1") > b.to_s(2).count("1")
#       a
#     elsif a.to_s(2).count("1") < b.to_s(2).count("1")
#       b
#     else
#       p a,b, "0"
#       if a.to_s(2).size < b.to_s(2).size
#         p a,b, "1"
#         a
#       elsif a.to_s(2).size > b.to_s(2).size
#         p a,b, "2"
#         b
#       else
#         p a,b
#         [a,b].min
#       end
#     end
#   end

#   arr_2 = arr.tally#arr.to_h {|k| [k,1]}
#   res = []

#   while arr_2.size > 0
#     limit = arr_2.keys.max_by { |el| el.to_s(2).count("1") }.to_s(2).count("1")
#     current = arr_2.keys.select {|el| el.to_s(2).count("1") == limit }
#     p limit, current, "0000"

#     if current.size < 2#.is_a? Integer
#       res.push(*current)
#       arr_2.delete(*current)
#     else
#       limit = current.min_by { |el| el.to_s(2).size }.to_s(2).size
#       current_sizes = current.select { |el| el.to_s(2).size == limit }

#       p limit, current_sizes, "1111"
#       if current_sizes.size < 2#.is_a? Integer
#         res.push(*current_sizes)
#         arr_2.delete(*current_sizes)
#       else
#         limit = current_sizes.min
#         current_mins = current_sizes.select { |el| el == limit }

#         if current_mins.size < 2
#           res.push(*current_mins)
#           arr_2.delete(*current_mins)
#         else
#           res.push(*current_mins)
#           arr_2.delete(*current_mins)
#         end
#       end
#     end
#   end

#   res

# #   arr_2 = arr.to_h {|k| [k,1]}
#   arr_2 = arr
#   res = []

#   while arr_2.size > 0
#     limit = arr_2.max_by { |el| el.to_s(2).count("1") }.to_s(2).count("1")
#     current = arr_2.select {|el| el.to_s(2).count("1") == limit }

#     if current.is_a? Integer
#       res.push(current)
#       arr_2.delete(current)
#     else
#       limit = current.min_by { |el| el.to_s(2).size }.to_s(2).size
#       current_sizes = current.select { |el| el.to_s(2).size == limit }

#       if current_sizes.is_a? Integer
#         res.push(current_sizes)
#         arr_2.delete(current_sizes)
#       else
#         res.push(current_sizes.min)
#         arr_2.delete(current_sizes.min)
#       end
#     end
#   end

#   res
end
