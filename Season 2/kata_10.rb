# codewars ruby implementation define function name in camelCase instead of snake_case
def decodeMorse(morse_code)
  morse_code
    .strip
    .split(/\s{3}/)
    .map { |word| MORSE_CODE.values_at(*word.split).join }
    .join(" ")
end
