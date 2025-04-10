def even_odd(arr)
  op = false

  arr.reduce do
    acc = op ? _1 + _2 : _1 * _2
    op = !op
    acc
  end
end
