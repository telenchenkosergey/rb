# frozen_string_literal: true

original_string = $stdin.gets.chomp.downcase
punctuation = %w[, . ! & ? / \\ : - + =]

punctuation.each { |e| original_string.delete!(e) }
original_string.delete!(' ')

if original_string == original_string.reverse
  puts 'Это палиндром'
else
  puts 'Это НЕ палиндром'
end
