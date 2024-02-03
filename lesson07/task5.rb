# frozen_string_literal: true

little = ('a'..'z').to_a
big = ('A'..'Z').to_a
digits = ('0'..'9').to_a

symbols = little + digits + big

token = ''

while token.length != 8
  e = symbols[rand(symbols.length)]
  token += e
end

puts token
