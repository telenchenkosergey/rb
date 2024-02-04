# frozen_string_literal: true

def roll
  50.times do
    print rand(6) + 1
    sleep 0.02
    print "\b"
  end
end

puts 'How many dice?'
amount = $stdin.gets.to_i

sum = 0

amount.times do
  roll
  dice = rand(6) + 1
  sum += dice
  puts dice
end
puts "Sum of dice: #{sum}"
