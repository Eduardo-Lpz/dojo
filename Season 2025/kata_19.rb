def even_binary(n)
  evens = n.split.select { _1.to_i(2).even? }.sort

  n.split.map do |n|
    n.to_i(2).even? ? evens.shift : n
  end.join(" ")
end
