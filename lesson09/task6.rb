# frozen_string_literal: true

def condition(user, comp)
  condition = user.zero? && comp == 1 ||
              user == 1 && comp == 2 ||
              user == 2 && comp.zero? ||
              user == 3 && comp == 1 ||
              user == 3 && comp == 2
  if user == comp
    return 3 if user == 3

    0
  elsif condition
    1
  else
    2
  end
end

figures = %w[камень ножницы бумага огонь]

result = [
  'Ничья',
  'Вы победили',
  'Компьютер победил',
  'Все огонь!'
]

puts 'Выбирайте свою судьбу!'
figures.each_with_index { |figure, i| puts "#{i}: #{figure}" }
user = $stdin.gets.to_i
comp = rand(4)
r = condition(user, comp)
puts "Вы - #{figures[user]}, компьютер - #{figures[comp]}"
puts result[r]
