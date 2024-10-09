def solution(roman)
  mapped_values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1_000
  }

  mapped_values
    .values_at(*roman.chars)
    .push(0)
    .each_cons(2)
    .map { |a, b| a < b ? -a : a }
    .sum
end
  # test = mapped_values.values_at(*roman.chars)
  # test.each_with_index.map do |val, idx|
  #   if !test[idx + 1]
  #     val
  #   else
  #     val < test[idx + 1] ? -val : val
  #   end
  # end
