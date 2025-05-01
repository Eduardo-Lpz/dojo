def shared_bits(a, b)
  (a & b).to_s(2).count("1") > 1
end
