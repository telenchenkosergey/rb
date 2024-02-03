# frozen_string_literal: true

puts 'Врага какого персонажа вы хотите узнать?'

hero = gets.chomp

case hero
when 'Бэтмен', 'Batman', 'BATMAN'
  puts 'Джокер'
when 'Супермен', 'Super Man'
  puts 'Лекс Лютор'
when 'Спайдермен', 'Spider Man'
  puts 'Профессор Октопус'
else
  puts 'Не удалось найти врага'
end
