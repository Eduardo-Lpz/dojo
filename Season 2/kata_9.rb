def clean_string(string)
  result = []
  string.chars.each do |value|
    if value.match? "#"
      result.pop
    else
      result.push value
    end
  end

  result.join
end

# def clean_string(string)
#   result = []
#   string.chars.each do |value|
#     value.match?("#") ? result.pop : result.push(value)
#   end

#   result.join
# end

# def clean_string(string)
#   res = []
#   string.chars.each { |val| val == "#" ? res.pop : res.push(val) }
#   res.join
# end

# def clean_string(string)
# 	string.chars.reduce("") { |res, val| val == "#" ? res.chop : res + val }
# end

# # Ruby 2.7

# def clean_string(string)
#   string.chars.reduce("") { _2 == "#" ? _1.chop : _2 + _1 }
# end
